import 'package:get/get.dart';

class HomeController extends GetxController {

  @override
  void onInit(){
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  String name = "";

  void updateName(String newName) {
    name = newName;
    update();
  }
}