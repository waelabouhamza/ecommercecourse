import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/localization/translation.dart';
import 'package:ecommercecourse/core/services/services.dart';
import 'package:ecommercecourse/routes.dart';
import 'package:ecommercecourse/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColor.black),
            bodyText1: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14)),
        primarySwatch: Colors.blue,
      ),
      home: const OnBoarding(),
      routes: routes,
    );
  }
}
