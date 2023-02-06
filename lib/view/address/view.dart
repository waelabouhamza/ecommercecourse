import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressView extends StatelessWidget {
  const AddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('address'),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed(AppRoute.addressadd);
          },
          child: Icon(Icons.add)),
      body: Container(
        child: ListView(children: []),
      ),
    );
  }
}
