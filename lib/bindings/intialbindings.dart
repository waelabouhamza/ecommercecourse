import 'package:ecommercecourse/core/class/crud.dart';
import 'package:get/get.dart';

class initialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud()) ; 
  }
}
