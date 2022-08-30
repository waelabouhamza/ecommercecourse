import 'package:ecommercecourse/core/class/statusrequest.dart';
import 'package:ecommercecourse/core/functions/handingdatacontroller.dart';
import 'package:ecommercecourse/core/services/services.dart';
import 'package:ecommercecourse/data/datasource/remote/home_data.dart';
import 'package:get/get.dart';

abstract class  HomeController extends GetxController {
 initialData()  ;
 getdata() ;  

}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? username;
  String? id;

 HomeData homedata = HomeData(Get.find());

  // List data = [];
  List categories = [];
  // List items = [];

  late StatusRequest statusRequest;

  @override
  initialData() {

    username = myServices.sharedPreferences.getString("username") ; 
    id = myServices.sharedPreferences.getString("id") ; 
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
  
  @override
  getdata() async {
        statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
      } else {
        statusRequest = StatusRequest.failure ; 
      }
    }
    update();
  }
}
