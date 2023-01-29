import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/constant/imgaeasset.dart';
import 'package:ecommercecourse/data/model/itemsmodel.dart';
import 'package:flutter/material.dart';

class CustomItemsCartList extends StatelessWidget {
  final String name ; 
  final String price  ; 
  final String count   ; 
  const CustomItemsCartList({Key? key, required this.name, required this.price, required this.count , }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(children: [
          Expanded(
              flex: 2,
              child: Image.asset(
                AppImageAsset.logo,
                height: 90,
                fit: BoxFit.cover,
              )),
          Expanded(
              flex: 3,
              child: ListTile(
                title: Text(name, style: TextStyle(fontSize: 15)),
                subtitle: Text(price,
                    style:
                        TextStyle(color: AppColor.primaryColor, fontSize: 17)),
              )),
          Expanded(
              child: Column(
            children: [
              Container(
                  height: 35,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.add))),
              Container(
                  height: 30,
                  child: Text(
                    count,
                    style: TextStyle(fontFamily: "sans"),
                  )),
              Container(
                  height: 25,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.remove)))
            ],
          ))
        ]),
      ),
    );
  }
}
