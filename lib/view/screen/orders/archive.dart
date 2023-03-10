import 'package:ecommercecourse/controller/orders/archive_controller.dart';
import 'package:ecommercecourse/controller/orders/pending_controller.dart';
import 'package:ecommercecourse/core/class/handlingdataview.dart'; 
import 'package:ecommercecourse/view/widget/orders/orderslistcard.dart';
import 'package:ecommercecourse/view/widget/orders/orderslistcardarchive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

class OrdersArchiveView extends StatelessWidget {
  const OrdersArchiveView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(OrdersArchiveController());
    return Scaffold(
        appBar: AppBar(
          title: const Text('Orders'),
        ),
        body: Container(
          padding:const  EdgeInsets.all(10),
          child: GetBuilder<OrdersArchiveController>(
              builder: ((controller) => HandlingDataView(statusRequest: controller.statusRequest, widget: ListView.builder(
                    itemCount: controller.data.length,
                    itemBuilder: ((context, index) =>
                        CardOrdersListArchive(listdata: controller.data[index])),
                  )))),
        ));
  }
}
