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
    Timer(Duration(seconds: 5), () async {
      print("object 1");

      if (fAuth.currentUser == null) {
        Get.offAll(() => LoginScreen());
        print("object 2");
      } else {
        print("object 3");
        var documentSnapshot =
            await firestore_get("user", fAuth.currentUser!.uid);
        print("object 4");
        currentUserData = UserModel.fromMap(documentSnapshot);
        print(currentUserData.userName);
        print(currentUserData.userEmail.toString());
        // print(currentUserData.iscompleted);
        // if (currentUserData.iscompleted == true) {
        //   Get.offAll(() => MainHomeScreen());
        // }
        // if (currentUserData.iscompleted == false) {
        //   Get.offAll(() => AboutUserInfo());
        // }
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
