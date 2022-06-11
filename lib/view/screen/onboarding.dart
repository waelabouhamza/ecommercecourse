import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Container(padding: const EdgeInsets.all(10), child: const Text("Hi")),
    );
  }
}
