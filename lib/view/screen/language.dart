import 'dart:ui';

import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/view/widget/language/custombuttomlang.dart';
import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Choose Language" , style:  Theme.of(context).textTheme.headline1) , 
              const SizedBox(height: 20) , 
              CustomButtonLang(textbutton: "Ar", onPressed: () {}),
              CustomButtonLang(textbutton: "En", onPressed: () {}),
            ],
          )),
    );
  }
}
