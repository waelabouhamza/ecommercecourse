import 'package:ecommercecourse/core/class/statusrequest.dart';
import 'package:ecommercecourse/core/functions/handingdatacontroller.dart';
import 'package:ecommercecourse/core/services/services.dart';
import 'package:ecommercecourse/data/datasource/remote/favorite_data.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

class FavoriteController extends GetxController {
  FavoriteData favoriteData = FavoriteData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

  Map isFavorite = {};

//  key => id items
//  Value => 1 OR 0

  setFavorite(id, val) {
    isFavorite[id] = val;
    update();
  }

  addFavorite(String itemsid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.addFavorite(
        myServices.sharedPreferences.getString("id")!, itemsid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "اشعار",
            messageText: const Text("تم اضافة المنتج من المفضلة "));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }

  removeFavorite(String itemsid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.removeFavorite(
        myServices.sharedPreferences.getString("id")!, itemsid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "اشعار",
            messageText: const Text("تم حذف المنتج من المفضلة "));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }
}
