import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/view/widget/auth/custombuttonauth.dart';
import 'package:ecommercecourse/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommercecourse/view/widget/auth/customtextformauth.dart';
import 'package:ecommercecourse/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommercecourse/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const LogoAuth(),
          const CustomTextTitleAuth(text: "Welcome Back"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Sign In With Your Email And Password OR Continue With Social Media"),
          const SizedBox(height: 15),
          const CustonTextFormAuth(
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email",
            // mycontroller: ,
          ),
          const CustonTextFormAuth(
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller: ,
          ),
          const Text(
            "Forget Password",
            textAlign: TextAlign.end,
          ),
          CustomButtomAuth(text: "Sign In", onPressed: () {}),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account ? "),
              InkWell(
                child: Text("Sign Up",
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold)),
              )
            ],
          )
        ]),
      ),
    );
  }
}
