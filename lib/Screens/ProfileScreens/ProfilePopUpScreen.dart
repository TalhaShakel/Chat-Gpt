import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePopUp extends StatelessWidget {
  const ProfilePopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 19.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                252.h.heightBox,
                Text(
                  "Michael Lurk ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w800),
                ),
                19.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 15,
                      color: Color(0xffFFA600),
                    ),
                    Text(
                      "Mumbai, patna",
                      style: TextStyle(color: Colors.black, fontSize: 10.sp),
                    ),
                  ],
                ),
                20.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 31.h,
                      width: 111.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius:
                              BorderRadius.all(Radius.circular(60.r))),
                      child: Center(
                        child: Text(
                          "MESSAGE",
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    6.w.widthBox,
                    Container(
                      height: 31.h,
                      width: 111.w,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: ConstColors.btnColor),
                          borderRadius:
                              BorderRadius.all(Radius.circular(60.r))),
                      child: Center(
                        child: Text(
                          "FOLLOW",
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
                25.h.heightBox,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h), //54
                  child: Text(
                    "Today I've amazing moment, when I went to my office, I found my old watch in the ...",
                    softWrap: true,
                    style: TextStyle(fontSize: 14.sp, color: Color(0xff6C6C6C)),
                  ),
                ),
                35.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    followingdetials("682", "Followers"),
                    20.w.widthBox,
                    followingdetials("20k", "Following"),
                    20.w.widthBox,
                    followingdetials("200", "Posts"),
                    20.w.widthBox,
                    followingdetials("200", "Subscribers"),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Column followingdetials(var number, var txtName) {
    return Column(
      children: [
        Text(
          "$number",
          style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
        8.h.heightBox,
        Text(
          "$txtName",
          style: TextStyle(
              fontSize: 14.sp, letterSpacing: 0.4, color: Color(0xff6C6C6C)),
        )
      ],
    );
  }
}
