import 'package:flutter/material.dart';
class Login2Page extends StatefulWidget {
  const Login2Page({super.key});

  @override
  State<Login2Page> createState() => _Login2PageState();
}

class _Login2PageState extends State<Login2Page> {
  // State
  String text = 'Hello';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Text(text),
          ),
          ElevatedButton(
              onPressed: testpress,
              child: Text('OK'))
        ],
      ),
    );
  }

  void testpress() {
    setState(() {
      text = 'HEllo WWAA';
    });
  }
}