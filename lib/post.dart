import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String child;

  const Post({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 300,
        color: Colors.deepPurple[200],
        child: Center(
            child: Text(
          child,
          style: const TextStyle(fontSize: 40),
        )),
      ),
    );
  }
}
