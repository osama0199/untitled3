import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Styling App'),

        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Main Heading
          const Text(
            'Flutter Text Styling',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height:20 ),
          // Subheading
          const Text(
            'Experiment with text styles',
            style: TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height:20 ),
          // Clickable Text
          GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Text Clicked!'),
                ),
              );
            },

            child: const Text(
              'Click Me',
              style: TextStyle(
                fontSize: 16,
                color: Colors.purple,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(height:20 ),
          // Additional Text
          const Text.rich(
            TextSpan(
              text: 'Welcome to ',
              style: TextStyle(fontSize: 18),
              children: [
                TextSpan(
                  text: 'Flutter!',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}