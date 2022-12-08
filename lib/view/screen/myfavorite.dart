import 'package:ecommercecourse/controller/myfavoritecontroller.dart';
import 'package:ecommercecourse/core/class/handlingdataview.dart';
import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:ecommercecourse/view/widget/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavoriteController());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<MyFavoriteController>(
            builder: ((controller) => ListView(children: [
                  CustomAppBar(
                    titleappbar: "Find Product",
                    onPressedIcon: () {},
                    onPressedSearch: () {},
                    onPressedIconFavorite: () {
                      Get.toNamed(AppRoute.myfavroite);
                    },
                  ),
                  HandlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.data.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Text(controller.data[index].itemsName!);
                        },
                      ))
                ]))),
      ),
    );
  }
}
