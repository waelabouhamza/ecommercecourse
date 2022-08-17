import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Container(
          child: const Center(
              child: Text(
        "HomePage",
        style: TextStyle(fontSize: 40),
      ))),
    );
  }
}
