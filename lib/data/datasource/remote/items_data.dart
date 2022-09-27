import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getData() async {
    var response = await crud.postData(AppLink.items, {});
    return response.fold((l) => l, (r) => r);
  }
}
