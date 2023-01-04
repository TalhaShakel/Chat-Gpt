import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class MyAudioRoomHost extends StatelessWidget {
  const MyAudioRoomHost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2931),
      appBar: AppBar(
        backgroundColor: Color(0xff1d2931),
        elevation: 0,
        title: Text(
          "My future",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp),
        ),
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          26.h.heightBox,
          Container(
              height: Get.height.h,
              width: Get.width.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    24.h.heightBox,
                    Text(
                      "What a big truck",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 22.sp),
                    ),
                    20.h.heightBox,
                    Divider(),
                    10.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Speakers",
                          style: TextStyle(
                              color: Color(0xff858583),
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Mute All",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.sp),
                              ),
                              5.h.heightBox,
                              Icon(
                                Icons.mic_off_outlined,
                                color: Colors.black,
                                size: 20,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    10.h.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          userContainer(),
                          userContainer(),
                          userContainer(),
                          userContainer(),
                          userContainer(),
                        ],
                      ),
                    ),
                    20.h.heightBox,
                    Divider(),
                    Text(
                      "Followers and Audients",
                      style: TextStyle(
                          color: Color(0xff858583),
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp),
                    ),
                    20.h.heightBox,
                    GridView.count(
                        // childAspectRatio: (270.w / 300.h),
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 4,
                        mainAxisSpacing: 40,
                        crossAxisSpacing: 20,
                        scrollDirection: Axis.vertical,
                        children: List.generate(12, (index) {
                          return Column(
                            children: [
                              Container(
                                height: 81.h,
                                width: 73.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(12.r))),
                                child:
                                    Center(child: Image.asset("assets/fu.png")),
                              ),
                              12.h.heightBox,
                              Text(
                                "Suami Orangs",
                                style: TextStyle(
                                    color: Color(0xff979797),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10.sp),
                              ),
                            ],
                          );
                        })),
                    // Expanded(
                    //   child: Align(
                    //       alignment: Alignment.bottomCenter,
                    //       child: Container(
                    //         height: 80.h,
                    //         width: Get.width,
                    //         color: Colors.black,
                    //         child: Row(
                    //           children: [],
                    //         ),
                    //       )),
                    // )
                  ],
                ),
              )),
        ],
      )),
    );
  }

  Padding userContainer() {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 88.h,
                width: 81.w,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(15.r))),
                child: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Container(
                    height: 81.h,
                    width: 74.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.r))),
                    child: Image.asset(
                      "assets/fu.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 23.h,
                      width: 23.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.r))),
                      child: Icon(
                        Icons.mic_none_outlined,
                        color: Colors.black,
                        size: 15.sp,
                      )),
                ),
              ),
            ],
          ),
          15.h.heightBox,
          Text(
            "Suami Orangs",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}
