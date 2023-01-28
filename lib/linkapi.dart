class AppLink {
// static const String server = "https://waelabohamza.com/ecommercee";
  
// static const String imageststatic = "https://waelabohamza.com/ecommercee/upload";
//========================== Image ============================
  static const String imagestCategories = "$imageststatic/categories";
  static const String imagestItems = "$imageststatic/items";
// =============================================================
//
  static const String test = "$server/test.php";

// ================================= Auth ========================== //

  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifycodessignup = "$server/auth/verfiycode.php";
  static const String resend = "$server/auth/resend.php";

// ================================= ForgetPassword ========================== //

  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verifycodeforgetpassword =
      "$server/forgetpassword/verifycode.php";

// Home

  static const String homepage = "$server/home.php";
// items
  static const String items = "$server/items/items.php";

// Favorite

  static const String favoriteAdd = "$server/favorite/add.php";
  static const String favoriteRemove = "$server/favorite/remove.php";
  static const String favoriteView = "$server/favorite/view.php";
  static const String deletefromfavroite = "$server/favorite/deletefromfavroite.php";
}
