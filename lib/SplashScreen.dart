import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';

class SplashScrren extends StatefulWidget {
  const SplashScrren({super.key});

  @override
  State<SplashScrren> createState() => _SplashScrrenState();
}

class _SplashScrrenState extends State<SplashScrren> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      // Get.to(() =>        ());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 260.h,
          width: 260.w,
          decoration: BoxDecoration(
              color: ColorConstants.CircleColor, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
