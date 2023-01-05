import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatCreateCommunities extends StatelessWidget {
  const ChatCreateCommunities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2931),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.h.heightBox,
                  Text(
                    "Classic",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24.sp),
                  ),
                  25.h.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 54.h,
                                width: 54.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/e.png"),
                                      fit: BoxFit.cover),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.green,
                                  size: 20,
                                )),
                            11.h.heightBox,
                            Text(
                              "Add",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.sp),
                            ),
                          ],
                        ),
                        storiesContainer(),
                        storiesContainer(),
                        storiesContainer(),
                        storiesContainer(),
                        storiesContainer(),
                        22.h.heightBox,
                      ],
                    ),
                  )
                ],
              ),
            ),

//////////////////////////////////////////
            Container(
              height: Get.height.h,
              width: Get.width.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(31.0),
                    topLeft: Radius.circular(31.0)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child:
                    //////////////////////////////////////////////////
                    Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    15.h.heightBox,
                    Text(
                      "Recommended Communities",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 20.sp),
                    ),
                    12.h.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          recommandCommunities(),
                          recommandCommunities(),
                          recommandCommunities(),
                          recommandCommunities(),
                          recommandCommunities(),
                          recommandCommunities(),
                        ],
                      ),
                    ),
                    25.h.heightBox,
                    Text(
                      "My Communities",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 20.sp),
                    ),
                    12.h.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          recommandCommunities(),
                          recommandCommunities(),
                          recommandCommunities(),
                          recommandCommunities(),
                          recommandCommunities(),
                          recommandCommunities(),
                        ],
                      ),
                    ),
                    23.h.heightBox,
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50.h,
                        width: 359.w,
                        decoration: BoxDecoration(
                            // color: ConstColors.Lbutton,
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: ConstColors.btnColor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(11))),
                        child: Center(
                          child: Text(
                            "Create A Community",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 13.sp),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding recommandCommunities() {
    return Padding(
      padding: EdgeInsets.only(right: 19.h),
      child: Stack(
        children: [
          Container(
            height: 199.h,
            width: 238.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(31.r))),
            child: Column(
              children: [
                Container(
                  height: 57.h,
                  width: 238.w,
                  decoration: BoxDecoration(
                    // border: Border(
                    //     bottom: BorderSide(
                    //         color: Colors.black, width: 45)),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: ConstColors.btnColor),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(31.0),
                        topLeft: Radius.circular(31.0)),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 0,
                ),
                Container(
                  height: 140.h,
                  width: 238.w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: ConstColors.btnColor),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(31.0),
                        bottomLeft: Radius.circular(31.0)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        39.h.heightBox,
                        Text(
                          "Danny",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 16.sp),
                        ),
                        10.h.heightBox,
                        Center(
                          child: Text(
                            "I found this skateboard on the internet, and surprisingly it's come with a good quality.",
                            softWrap: true,
                            style: TextStyle(
                                color: Color(0xff6B6B6B), fontSize: 10.sp),
                          ),
                        ),
                        19.h.heightBox,
                        Row(
                          children: [
                            Icon(
                              Icons.people_outline,
                              color: Colors.black,
                              size: 15,
                            ),
                            6.w.widthBox,
                            Text(
                              "122 Members",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10.sp),
                            ),
                            ////
                            Spacer(),
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.black,
                              size: 15,
                            ),
                            6.w.widthBox,
                            Text(
                              "Mumbai",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10.sp),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 25.w,
            right: 50.h,
            left: 50.h,
            child: Container(
              height: 67.h,
              width: 67.w,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  shape: BoxShape.circle),
              child: CircleAvatar(
                  child: Image.asset(
                "assets/p1.png",
                fit: BoxFit.fill,
              )),
            ),
          )
        ],
      ),
    );
  }

  Padding storiesContainer() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          DottedBorder(
            color: Colors.green,
            borderType: BorderType.Circle,
            child: Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset("assets/p.png")),
          ),
          11.h.heightBox,
          Text(
            "Saepuls",
            style: TextStyle(color: Colors.white, fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}
