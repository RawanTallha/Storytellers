from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
import requests

app = FastAPI()

# Data model for the input data
class StoryRequest(BaseModel):
    kid_input: str  # This is the input from the user (or child) for story generation

# Function to get the access token from IBM
def get_access_token():
    url = 'https://iam.cloud.ibm.com/identity/token'
    headers = {'Content-Type': 'application/x-www-form-urlencoded'}
    data = {
        'grant_type': 'urn:ibm:params:oauth:grant-type:apikey',
        'apikey': "1xjlDOw5lPx532eB7_xn37I9WsbVh0kx5LfNUY223Mbb"  # Replace with your actual API key
    }
    response = requests.post(url, headers=headers, data=data)
    response.raise_for_status()  # Raises an error if the response is not 200
    return response.json()['access_token']

# Endpoint to generate a story
@app.post("/generate_story/")
async def generate_story(request: StoryRequest):
    # Retrieve the access token
    access_token = get_access_token()

    # Define the API endpoint and headers
    url = "https://eu-de.ml.cloud.ibm.com/ml/v1/text/generation?version=2023-05-29"
    headers = {
        "Accept": "application/json",
        "Content-Type": "application/json",
        "Authorization": "Bearer " + access_token
    }

    # Construct the prompt with the kid's input
    user_input = f"""أريد قصة قصيرة وجميلة تساعد الأطفال على فهم القيم السعودية والإسلامية الأصيلة. يجب أن تكون القصة بلغة بسيطة وسلسة، وأن تكون مشوقة ومليئة بالعبر المستوحاة من تعاليم الإسلام، لتناسب مستوى تفكير الأطفال وتشد انتباههم وتدخل البهجة في قلوبهم. إذا لم تكن القصة مناسبة للأطفال، يُرجى كتابة العبارة: 'لا أستطيع صنع هذه القصة.{request.kid_input}"""

    # Define the request body with dynamic input and parameters
    body = {
        "input": f"""<s> [INST]<<SYS>>\n{user_input}\n<</SYS>>\n""",
        "parameters": {
            "decoding_method": "greedy",
            "max_new_tokens": 800,
            "repetition_penalty": 1.1,
            "no_repeat_ngram_size": 2,
            "top_k": 50,
            "top_p": 0.9
        },
        "model_id": "sdaia/allam-1-13b-instruct",
        "project_id": "e4e9b37f-285b-40bb-a4b5-09b71f5766d6"
    }

    try:
        # Send the request to the model API
        response = requests.post(url, headers=headers, json=body)
        response.raise_for_status()  # Raise an error for non-200 responses

        # Retrieve the generated story text
        story = response.json().get("results", [{}])[0].get("generated_text", "")

        # Return the story or a message if it's empty
        if not story:
            return {"message": "The generated story is empty."}
        return {"story": story}

    except requests.exceptions.RequestException as e:
        # Handle any errors that occur during the request
        raise HTTPException(status_code=500, detail=f"Error generating story: {e}")