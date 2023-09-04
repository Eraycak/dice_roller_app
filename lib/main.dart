import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue,
                Colors.red,
              ],
            ),
          ),
          child: const Center(
            child: Text(
              'Hello World',
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
          ),
        ),
      ),
    ),
  );
}
