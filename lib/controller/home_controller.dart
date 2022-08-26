import 'package:ecommercecourse/core/services/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? username;
  String? id;

  initialData() {

    username = myServices.sharedPreferences.getString("username") ; 
    id = myServices.sharedPreferences.getString("id") ; 
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
