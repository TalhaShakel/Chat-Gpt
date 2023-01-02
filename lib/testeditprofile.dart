import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class TestEditProfile extends StatelessWidget {
  const TestEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            elevation: 0,
            title: Text(
              "Edit Profile",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp),
            ),
            leading: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back)),
            centerTitle: true,
            actions: [
              GestureDetector(
                onTap: () {},
                child: Container(
                    height: 22.h,
                    width: 19.w,
                    decoration: BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                    child: Center(
                        child: Icon(
                      Icons.camera_alt_outlined,
                      size: 15,
                    ))),
              ),
              21.w.widthBox,
            ],
            backgroundColor: Colors.transparent),
        body: Container(
          height: 392.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg.png"), fit: BoxFit.cover),
          ),
        ));
  }
}
