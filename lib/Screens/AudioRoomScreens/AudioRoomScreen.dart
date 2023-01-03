import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class AudioRoomScreen extends StatelessWidget {
  const AudioRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 21.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            15.h.heightBox,
            Container(
              height: 41.h,
              width: 237.w,
              child: Text(
                "Audio Rooms",
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),
              ),
            ),
            10.h.heightBox,
            Container(
              height: 40.h,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: ConstColors.textfieldColor,
                  contentPadding: EdgeInsets.all(10),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: ConstColors.CircleColor, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ConstColors.textfieldColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(
                      fontSize: 8.sp, color: Color.fromRGBO(155, 155, 155, 1)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(115.r),
                  ),
                ),
              ),
            ),
            11.h.heightBox,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  suggestContainer("Language"),
                  suggestContainer("Language"),
                  suggestContainer("Explore Topics"),
                ],
              ),
            ),
            12.h.heightBox,
            Container(
              height: 189.h,
              width: 360.w,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 20.0,
                      spreadRadius: 0.0,
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30.r))),
              child: Padding(
                padding: EdgeInsets.all(3),
                child: Row(
                  children: [
                    Container(
                        height: 183.h,
                        width: 114.w,
                        child: Image.asset(
                          "assets/ll.png",
                          fit: BoxFit.cover,
                        )),
                    20.w.widthBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        22.h.heightBox,
                        Text(
                          "My Future",
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w600),
                        ),
                        10.h.heightBox,
                        Text(
                          "What a big truck",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xffA8A8A8),
                              fontWeight: FontWeight.w500),
                        ),
                        12.h.heightBox,
                        Row(
                          children: [
                            Container(
                              width: 120.w,
                              child: Stack(
                                children: [
                                  picContainer(),
                                  Positioned(left: 20.h, child: picContainer()),
                                  Positioned(left: 40.h, child: picContainer()),
                                  Positioned(left: 60.h, child: picContainer()),
                                  Positioned(
                                    left: 80.h,
                                    child: Container(
                                      height: 32.h,
                                      width: 29.w,
                                      decoration: BoxDecoration(
                                        color: ConstColors.CircleColor,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "+20",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xffA8A8A8)),
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        10.h.heightBox,
                        Row(
                          children: [
                            Text(
                              "Hosted by:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Mike Derulo, Johny Brawo",
                              softWrap: true,
                              style: TextStyle(
                                  color: Color(0xffA8A8A8),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        10.h.heightBox,
                        Row(
                          children: [
                            Icon(
                              Icons.mic,
                              color: Color(0xff6B6D7D),
                              size: 20,
                            ),
                            5.w.widthBox,
                            Text(
                              "2",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            20.w.widthBox,
                            Icon(
                              Icons.person,
                              color: Color(0xff6B6D7D),
                              size: 20,
                            ),
                            5.w.widthBox,
                            Text(
                              "2",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container picContainer() {
    return Container(
      height: 32.h,
      width: 29.w,
      decoration: BoxDecoration(
        // color: Colors.black,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Center(
          child: Image.asset(
        "assets/pp.png",
        fit: BoxFit.cover,
      )),
    );
  }

  Padding suggestContainer(var text) {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: Container(
        height: 31.h,
        width: 99.w,
        decoration: BoxDecoration(
            color: ConstColors.CircleColor,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(33.r))),
        child: Center(
          child: Text(
            "$text",
            style: TextStyle(
                fontSize: 12.sp,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
