import 'package:get/get.dart';

class ProfileController extends GetxController {
  var aiProfiledata = false;
  isfeed(val) {
    aiProfiledata = val;
    update();
  }
}
