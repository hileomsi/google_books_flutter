import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          autofocus: true,
          decoration: InputDecoration(
            hintText: 'Search for books',
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black26,
              letterSpacing: 0.8
            )
          ),
        ),
      ),
    );
  }
}
