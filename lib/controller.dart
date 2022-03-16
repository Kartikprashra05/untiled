import 'package:get/get.dart';
import 'package:untitled6/sherared_preferences.dart';

import 'authprovider.dart';

class Controller extends GetxController{
  var email = "".obs;
  var password = "".obs;
  late AuthApiProvider _authApiProvider;
  @override
  void onInit() {


    super.onInit();
  }
}