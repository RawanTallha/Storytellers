import 'package:flutter/material.dart';
import 'package:page_flip/page_flip.dart';

class StoryPage extends StatelessWidget {
  final String story;
  StoryPage({Key? key, required this.story}) : super(key: key);

  final GlobalKey<PageFlipWidgetState> _controller =
      GlobalKey<PageFlipWidgetState>();

  // Function to split story text into chunks for each page
  List<String> splitStoryIntoPages(String storyText) {
    const int maxCharactersPerPage = 150; // Customize as needed
    List<String> pages = [];

    // Split into segments based on max characters per page
    for (int i = 0; i < storyText.length; i += maxCharactersPerPage) {
      pages.add(storyText.substring(
          i,
          i + maxCharactersPerPage > storyText.length
              ? storyText.length
              : i + maxCharactersPerPage));
    }
    return pages;
  }

  @override
  Widget build(BuildContext context) {
    final List<String> storyPages = splitStoryIntoPages(story);

    return Scaffold(
      appBar: AppBar(
        title: Text("Generated Story"),
      ),
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
              Expanded(
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(153, 80, 43, 14),
                      borderRadius: BorderRadius.circular(8),
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
    );
  }
}

class DemoPage extends StatelessWidget {
  final String content;

  const DemoPage({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          content,
          style: const TextStyle(fontSize: 18, color: Colors.black87),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
