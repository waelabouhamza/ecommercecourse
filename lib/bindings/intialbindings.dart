import 'package:ecommercecourse/core/class/crud.dart';
import 'package:get/get.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // Start 
    Get.put(Crud()) ; 
  }
}
