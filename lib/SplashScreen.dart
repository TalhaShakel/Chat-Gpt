import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Models/Service.dart';
import 'package:spoot_light/Models/UserModels.dart';
import 'package:spoot_light/Screens/AuthScreens/AboutUserInfoScreen.dart';
import 'package:spoot_light/Screens/AuthScreens/LoginScreen.dart';
import 'package:spoot_light/Screens/MainHomeScreen/MainHomeScreen.dart';
import 'package:spoot_light/Screens/ProfileScreens/ProfileScreen.dart';

class SplashScrren extends StatefulWidget {
  const SplashScrren({super.key});

  @override
  State<SplashScrren> createState() => _SplashScrrenState();
}

class _SplashScrrenState extends State<SplashScrren> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () async {
      // User? user;
      // ever(_user, setInitialScreen);
      if (fAuth.currentUser == null) {
        Get.offAll(() => LoginScreen());
      } else {
        var documentSnapshot =
            await firestore_get("user", fAuth.currentUser!.uid);
        currentUserData = UserModel.fromMap(documentSnapshot);
        print(currentUserData.userEmail.toString());
        // print(currentUserData.iscompleted);
        if (currentUserData.iscompleted == true)
          Get.offAll(() => ProfileScreen());
        if (currentUserData.iscompleted == false)
          Get.offAll(() => AboutUserInfo());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 257.h,
          width: 257.w,
          child: Image.asset(
            "assets/b.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
