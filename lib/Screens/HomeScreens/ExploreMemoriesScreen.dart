import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ExploreMemoriesScreen extends StatelessWidget {
  const ExploreMemoriesScreen({super.key});

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
            backgroundColor: Colors.transparent),
        body: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/em.png"), fit: BoxFit.fitWidth),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 11.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SidebarColumn("assets/dil.png", "150"),
                      SidebarColumn("assets/msg.png", "150"),
                      SidebarColumn("assets/se.png", "150"),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 150.h,
                  width: Get.width.w,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 47.h,
                              width: 47.w,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("assets/ep.png"),
                            ),
                            10.w.widthBox,
                            Text(
                              "Pewpew",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            16.w.widthBox,
                            Container(
                              height: 26.h,
                              width: 83.w,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border:
                                      Border.all(width: 1, color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6.r))),
                              child: Center(
                                child: Text(
                                  "Follow",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        4.h.heightBox,
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.h),
                          child: Text(
                            "Today I've amazing moment, when I went to my office, I found my old watch in the ...",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        28.h.heightBox,
                        Row(
                          children: [
                            lineContainer(),
                            lineContainer(),
                            lineContainer(),
                            Expanded(child: lineContainer()),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Padding lineContainer() {
    return Padding(
      padding: EdgeInsets.only(right: 9.h),
      child: Container(
        height: 3.h,
        width: 81.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(139.r))),
      ),
    );
  }

  Padding SidebarColumn(var imagePath, var numbers) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Container(
            height: 37.h,
            width: 37.w,
            decoration: BoxDecoration(
                color: Colors.transparent.withOpacity(0.1),
                shape: BoxShape.circle),
            child: Center(
              child: Image.asset(imagePath),
              // child: Icon(
              //   iconName,
              //   color: Colors.purple,
              //   size: 25,
              // ),
            ),
          ),
          6.h.heightBox,
          Text(
            "$numbers",
            style: TextStyle(color: Colors.white, fontSize: 14.sp),
          ),
        ],
      ),
    );
  }
}
