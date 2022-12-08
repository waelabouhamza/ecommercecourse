import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';

class FavoriteData {
  Crud crud;
  FavoriteData(this.crud);
  addFavorite(String usersid, String itemsid) async {
    var response = await crud.postData(
        AppLink.favoriteAdd, {"usersid": usersid, "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }

  removeFavorite(String usersid, String itemsid) async {
    var response = await crud.postData(
        AppLink.favoriteRemove, {"usersid": usersid, "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }
}
