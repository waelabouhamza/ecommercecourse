import 'package:ecommercecourse/core/constant/color.dart';
import 'package:flutter/material.dart';

class CardShppingAddressCheckout extends StatelessWidget {
  final String title;
  final String body;
  final bool isactive;
  const CardShppingAddressCheckout(
      {Key? key,
      required this.title,
      required this.body,
      required this.isactive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isactive ? AppColor.secondColor : Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: Text(title,
            style: TextStyle(
                color: isactive ? Colors.white : null,
                fontWeight: FontWeight.bold)),
        subtitle: Text(body,
            style: TextStyle(
                color: isactive ? Colors.white : null,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
