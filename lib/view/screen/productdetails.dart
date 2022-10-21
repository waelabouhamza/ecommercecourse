import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommercecourse/controller/productdetails_controller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/data/model/itemsmodel.dart';
import 'package:ecommercecourse/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller =
        Get.put(ProductDetailsControllerImp());
    return Scaffold(
        bottomNavigationBar: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 40,
            child: MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                color: AppColor.secondColor,
                onPressed: () {},
                child: Text("Add To Cart"  , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),))),
        body: ListView(children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 180,
                decoration: const BoxDecoration(color: AppColor.secondColor),
              ),
              Positioned(
                  top: 30.0,
                  right: Get.width / 8,
                  left: Get.width / 8,
                  child: Hero(
                    tag: "${controller.itemsModel.itemsId}",
                    child: CachedNetworkImage(
                      imageUrl: AppLink.imagestItems +
                          "/" +
                          controller.itemsModel.itemsImage!,
                      height: 250,
                      fit: BoxFit.fill,
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("${controller.itemsModel.itemsName}",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: AppColor.fourthColor,
                      )),
              const SizedBox(height: 10),
              Text(
                  "${controller.itemsModel.itemsDesc} ${controller.itemsModel.itemsDesc} ${controller.itemsModel.itemsDesc} ${controller.itemsModel.itemsDesc} ${controller.itemsModel.itemsDesc}",
                  style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(height: 10),
              Text("Color",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: AppColor.fourthColor,
                      )),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(bottom: 5),
                    height: 60,
                    width: 90,
                    decoration: BoxDecoration(
                        color: AppColor.fourthColor,
                        border: Border.all(color: AppColor.fourthColor),
                        borderRadius: BorderRadius.circular(10)),
                    child:const  Text("Red",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(bottom: 5),
                    height: 60,
                    width: 90,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.fourthColor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Black",
                        style: TextStyle(
                            color: AppColor.fourthColor,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(bottom: 5),
                    height: 60,
                    width: 90,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.fourthColor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Blue",
                        style: TextStyle(
                            color: AppColor.fourthColor,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              )
            ]),
          )
        ]));
  }
}
