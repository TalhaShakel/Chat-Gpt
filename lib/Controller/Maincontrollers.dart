import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:spoot_light/Models/Service.dart';
import 'package:spoot_light/Models/UserModels.dart';

class MainController extends GetxController {
  static MainController instance = Get.find();

  /////////// Male & Female ////////////////

  late Rx<User?> _user;
  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(fAuth.currentUser);
    _user.bindStream(fAuth.authStateChanges());
    ever(_user, setInitialScreen);
  }

  setInitialScreen(User? user) {
    if (user == null) {
      // Get.offAll(() => SplashScrren());
    } else {
      getuserdata();
      // Get.offAll(() => BottomNavBarScreen());
    }
  }

  getuserdata() async {
    print(fAuth.currentUser!.uid);
    var documentSnapshot = await firestore_get("user", fAuth.currentUser!.uid);
    currentUserData = UserModel.fromMap(documentSnapshot);
    update();
  }

  var gender = "";
  isselect(select) {
    gender = select;
    refresh();
  }

  bool topics = false;
  istopic(value) {
    topics = value;
  }

  var index = 0;
  pages(index1) {
    index = index1;
    refresh();
  }

  var check = "";
  isgender(gender) {
    check = gender;
    refresh();
  }

  var number = "";
  isSelectNum(num) {
    number = num;
    refresh();
  }

// chat gpt
  String res = "";

  post(prompt) async {
    try {
      EasyLoading.show();
      // var url = Uri.https(
      //     "https://api.openai.com/v1/models/text-davinci-002/completions/");
      var response = await http.post(
        Uri.parse(
            'https://api.openai.com/v1/engines/text-davinci-002/completions'),
        headers: {
          'Authorization':
              'Bearer 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',
          'Content-Type': 'application/json'
        },
        body: jsonEncode({
          "prompt": prompt,
          "max_tokens": 2048,
          "temperature": 1,
        }),
      );

      // Parse the response
      var responseJson = jsonDecode(response.body);
      print(responseJson);
      var responseText = responseJson["choices"][0]["text"];

      // Update the UI

      res = responseText;
      update();
      EasyLoading.dismiss();
    } catch (e) {
      EasyLoading.dismiss();
      print(e);
      Get.snackbar(e.toString(), "");
    }
  }
}
