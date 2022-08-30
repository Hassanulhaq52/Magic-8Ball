import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: const Center(
              child: Text(
                'Ask Me Everything',
              ),
            ),
          ),
          body: const MagicPage(),
        ),
      ),
    );

class MagicPage extends StatefulWidget {
  const MagicPage({Key? key}) : super(key: key);

  @override
  State<MagicPage> createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int ballNumber = 5;

  void changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeBallNumber();
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/ball$ballNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
