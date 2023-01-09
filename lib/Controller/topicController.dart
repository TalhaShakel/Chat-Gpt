import 'package:get/get.dart';

class TopicController extends GetxController {
  List selectTopics = [];

  // var aiProfiledata = false;
  isselected(val) {
    if (selectTopics.contains(val)) {
      selectTopics.remove(val);
    } else {
      selectTopics.add(val);
    }
    update();
  }
}
