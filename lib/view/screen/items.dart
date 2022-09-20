import 'package:ecommercecourse/controller/items_controller.dart';
import 'package:ecommercecourse/view/widget/customappbar.dart';
import 'package:ecommercecourse/view/widget/home/listcategorieshome.dart';
import 'package:ecommercecourse/view/widget/items/listcategoirseitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp contrller = Get.put(ItemsControllerImp());

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(children: [
          CustomAppBar(
              titleappbar: "Find Product",
              onPressedIcon: () {},
              onPressedSearch: () {}),
          SizedBox(height: 20),
          const ListCategoriesItems(),
        ]),
      ),
    );
  }
}
