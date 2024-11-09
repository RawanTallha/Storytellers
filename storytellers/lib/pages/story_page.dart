import 'package:flutter/material.dart';
import 'package:page_flip/page_flip.dart';

class StoryPage extends StatelessWidget {
  final String title;
  final String story;

  StoryPage({Key? key, required this.title, required this.story})
      : super(key: key);

  final GlobalKey<PageFlipWidgetState> _controller =
      GlobalKey<PageFlipWidgetState>();

  List<String> splitStory(String story, int chunkSize) {
    List<String> chunks = [];
    for (int i = 0; i < story.length; i += chunkSize) {
      int end = (i + chunkSize < story.length) ? i + chunkSize : story.length;
      chunks.add(story.substring(i, end));
    }
    return chunks;
  }

  @override
  Widget build(BuildContext context) {
    final List<String?> storyPages = [
      'lib/assets/book_cover.png',
      ...splitStory(story, 200),
      "The End"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: const TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset('lib/assets/story-wallpaper-dark.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover),
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
                      border: Border.all(color: Colors.grey.shade400, width: 2),
                    ),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: PageFlipWidget(
                      key: _controller,
                      backgroundColor: Colors.white,
                      lastPage: Container(
                        color: Colors.white,
                        child: const Center(
                          child:
                              Text('The End', style: TextStyle(fontSize: 24)),
                        ),
                      ),
                      children: [
                        for (var content in storyPages)
                          DemoPage(content: content),
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
          _controller.currentState?.goToPage(0);
        },
      ),
    );
  }
}

class DemoPage extends StatelessWidget {
  final String? content;

  const DemoPage({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (content?.endsWith('.png') == true ||
        content?.endsWith('.jpg') == true) {
      return Center(
          child: Image.asset(content!,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover));
    } else {
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
