import 'package:flutter/material.dart';
import 'package:page_flip/page_flip.dart';

class StoryPage extends StatelessWidget {
  StoryPage({Key? key, required this.title}) : super(key: key);
  final String title;

  final GlobalKey<PageFlipWidgetState> _controller =
      GlobalKey<PageFlipWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'lib/assets/story-wallpaper-dark.png', // Ensure this path is correct
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'The Great Adventure Book', // Book title
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(221, 45, 9, 116),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    padding:
                        const EdgeInsets.all(10), // Padding around the book
                    decoration: BoxDecoration(
                      color: Color.fromARGB(192, 74, 52, 28),
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 2,
                      ),
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
                            child: Text('The End',
                                style: TextStyle(fontSize: 24))),
                      ),
                      children: <Widget>[
                        for (var i = 0; i < 10; i++) DemoPage(page: i),
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
        child: const Icon(Icons.looks_5_outlined),
        onPressed: () {
          _controller.currentState?.goToPage(5); // Navigate to page 5
        },
      ),
    );
  }
}

// Example of a simple page to flip
class DemoPage extends StatelessWidget {
  final int page;

  const DemoPage({Key? key, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Page $page',
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
