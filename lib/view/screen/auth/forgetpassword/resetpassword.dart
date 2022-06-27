import 'package:ecommercecourse/controller/auth/resetpassword_controller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/functions/validinput.dart';
import 'package:ecommercecourse/view/widget/auth/custombuttonauth.dart';
import 'package:ecommercecourse/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommercecourse/view/widget/auth/customtextformauth.dart';
import 'package:ecommercecourse/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('ResetPassword',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(children: [
            const SizedBox(height: 20),
            CustomTextTitleAuth(text: "35".tr),
            const SizedBox(height: 10),
            CustomTextBodyAuth(text: "35".tr),
            const SizedBox(height: 15),
            CustomTextFormAuth(
              isNumber: false ,
              valid: (val) {
                return validInput(val!, 3, 40, "password");
              },
              mycontroller: controller.password,
              hinttext: "13".tr,
              iconData: Icons.lock_outline,
              labeltext: "19".tr,
              // mycontroller: ,
            ),
            CustomTextFormAuth(
              isNumber: false ,

              valid: (val) {
                return validInput(val!, 3, 40, "password");
              },
              mycontroller: controller.password,
              hinttext: "Re" + " " + "13".tr,
              iconData: Icons.lock_outline,
              labeltext: "19".tr,
              // mycontroller: ,
            ),
            CustomButtomAuth(
                text: "33".tr,
                onPressed: () {
                  controller.goToSuccessResetPassword();
                }),
            const SizedBox(height: 40),
          ]),
        ),
      ),
    );
  }
}
