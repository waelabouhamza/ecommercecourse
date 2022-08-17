import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';

class VerifyCodeForgetPasswordData {
  Crud crud;
  VerifyCodeForgetPasswordData(this.crud);
  postdata(String email ,String verifycode) async {
    var response = await crud.postData(AppLink.verifycodeforgetpassword, {
      "email" : email , 
      "verifycode" : verifycode   
    });
    return response.fold((l) => l, (r) => r);
  }
}
