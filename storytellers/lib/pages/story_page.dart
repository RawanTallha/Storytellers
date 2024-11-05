import 'package:flutter/material.dart';
import 'package:page_flip/page_flip.dart';

class StoryPage extends StatelessWidget {
  StoryPage({Key? key, required this.title}) : super(key: key);
  final String title;

  final GlobalKey<PageFlipWidgetState> _controller =
      GlobalKey<PageFlipWidgetState>();

  // Example story split into segments, including a cover image
  final List<String?> storyPages = [
    'lib/assets/book_cover.png', // Path to the book cover image
    "Once upon a time, in a faraway land, there was a young girl named Lila...",
    null, // Example null entry to test handling
    "Lila had a magical book that could transport her to enchanted worlds...",
    "One day, she opened the book and was whisked away to the Land of Dreams...",
    "In the Land of Dreams, Lila met talking animals and mysterious creatures...",
    "Her journey was filled with joy, wonder, and a bit of danger...",
    "The End."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: const TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent, // Makes the AppBar transparent
        elevation: 0, // Removes shadow
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'lib/assets/story-wallpaper-dark.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'The Great Adventure Book',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(153, 80, 43, 14),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.shade400, width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: PageFlipWidget(
                      key: _controller,
                      backgroundColor: Colors.white,
                      lastPage: Container(
                        color: Colors.white,
                        child: const Center(
                          child: Text(
                            'The End',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ),
                      children: [
                        for (var content in storyPages)
                          DemoPage(
                            content: content,
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.start),
        onPressed: () {
          _controller.currentState?.goToPage(0); // Navigate to page 5
        },
      ),
    );
  }
}

// Updated DemoPage to display content
class DemoPage extends StatelessWidget {
  final String? content; // Change to nullable to accommodate the cover image

  const DemoPage({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (content?.endsWith('.png') == true ||
        content?.endsWith('.jpg') == true) {
      // Display the image if the content is a valid image path
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            'lib/assets/sleep.png',
            fit: BoxFit.cover,
          ),
        ),
      );
    } else {
      // Display the text content
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            content ?? 'Content not available',
            style: const TextStyle(fontSize: 18, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
  }
}
