import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class AudioSpaceAddScreen extends StatelessWidget {
  const AudioSpaceAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            elevation: 0,
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
                    height: 28.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        color: Colors.transparent,
                        shape: BoxShape.circle),
                    child: Center(
                        child: Icon(
                      Icons.close,
                      size: 20,
                    ))),
              ),
              21.w.widthBox,
            ],
            backgroundColor: Colors.transparent),
        body: Container(
          height: Get.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/as.png"), fit: BoxFit.cover),
          ),
        ));
  }
}
