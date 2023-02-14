import 'package:ecommercecourse/controller/checkout_controller.dart';
import 'package:ecommercecourse/core/class/handlingdataview.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/constant/imgaeasset.dart';
import 'package:ecommercecourse/view/widget/checkout/carddeliveerytype.dart';
import 'package:ecommercecourse/view/widget/checkout/cardpaymentmethod.dart';
import 'package:ecommercecourse/view/widget/checkout/cardshippingaddress.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckoutController controller = Get.put(CheckoutController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: MaterialButton(
            color: AppColor.secondColor,
            textColor: Colors.white,
            onPressed: () {},
            child: const Text("Checkout",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          )),
      body: GetBuilder<CheckoutController>(
          builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                  padding: const EdgeInsets.all(20),
                  child: ListView(
                    children: [
                      const Text(
                        "Choose Payment Method",
                        style: TextStyle(
                            color: AppColor.secondColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          controller.choosePaymentMethod("cash");
                        },
                        child: CardPaymentMethodCheckout(
                            title: "Cash On Delivery",
                            isActive: controller.paymentMethod == "cash"
                                ? true
                                : false),
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          controller.choosePaymentMethod("card");
                        },
                        child: CardPaymentMethodCheckout(
                            title: "Payment Cards",
                            isActive: controller.paymentMethod == "card"
                                ? true
                                : false),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Choose Delivery Type",
                        style: TextStyle(
                            color: AppColor.secondColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              controller.chooseDeliveryType("delivery");
                            },
                            child: CardDeliveryTypeCheckout(
                                imagename: AppImageAsset.deliveryImage2,
                                title: "Delivery",
                                active: controller.deliveryType == "delivery"
                                    ? true
                                    : false),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              controller.chooseDeliveryType("recive");
                            },
                            child: CardDeliveryTypeCheckout(
                                imagename: AppImageAsset.drivethruImage,
                                title: "Revice",
                                active: controller.deliveryType == "recive"
                                    ? true
                                    : false),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      if (controller.deliveryType == "delivery")
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Shipping Address",
                              style: TextStyle(
                                  color: AppColor.secondColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            const SizedBox(height: 10),
                            ...List.generate(
                              controller.dataaddress.length,
                              (index) => InkWell(
                                onTap: () {
                                  controller.chooseShippingAddress(
                                      controller.dataaddress[index].addressId!);
                                },
                                child: CardShppingAddressCheckout(
                                    title:
                                        "${controller.dataaddress[index].addressName}",
                                    body:
                                        "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                    isactive: controller.addressid ==
                                            controller
                                                .dataaddress[index].addressId
                                        ? true
                                        : false),
                              ),
                            )
                          ],
                        )
                    ],
                  )))),
    );
  }
}
