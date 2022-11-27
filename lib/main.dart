import 'package:flutter/material.dart';
import 'package:listview/post.dart';
import 'package:listview/story.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'ListView'),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key, required this.title});

  final String title;
  final List<String> _posts = <String>[
    'Post 1',
    'Post 2',
    'Post 3',
    'Post 4',
    'Post 5',
  ];
  final List<String> _stories = <String>[
    'Story 1',
    'Story 2',
    'Story 3',
    'Story 4',
    'Story 5',
    'Story 6',
    'Story 7',
    'Story 8',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.amber[600],
              height: 100,
              child: ListView.builder(
                itemCount: _stories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Story(
                    child: _stories[index],
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  return Post(
                    child: _posts[index],
                  );
                },
              ),
            ),
          ],
        ));
  }
}
