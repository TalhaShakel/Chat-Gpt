import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class AudioSpaceComment extends StatelessWidget {
  const AudioSpaceComment({super.key});

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
        body: GestureDetector(
          onTap: () {
            Get.bottomSheet(audioBottomSheet());
          },
          child: Container(
            height: Get.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/asc.png"), fit: BoxFit.cover),
            ),
          ),
        ));
  }

  Container audioBottomSheet() {
    return Container(
      height: 438.h,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(31.r), topLeft: Radius.circular(31.r)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            13.h.heightBox,
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Comment",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                ),
                9.w.widthBox,
                Container(
                  height: 19.h,
                  width: 19.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: ConstColors.CircleColor),
                  child: Center(
                    child: Text(
                      "23",
                      style: TextStyle(
                          color: Color(0xff6B6D7D),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
            
            Divider(),
            20.h.heightBox,
            // SingleChildScrollView(
            //   scrollDirection: Axis.vertical,
            //   child: Column(
            //     children: [
            ProfileComment(),
            ProfileComment(),
            ProfileComment(),
            // ProfileComment(),
            //     ],
            //   ),
            // ),
            66.h.heightBox,
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(children: [
                  Container(
                    width: 270.w,
                    height: 40.h,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: ConstColors.textfieldColor,
                        prefixIcon: Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                        ),
                        contentPadding: EdgeInsets.all(10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ConstColors.CircleColor, width: 1),
                          borderRadius: BorderRadius.circular(68),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ConstColors.textfieldColor),
                          borderRadius: BorderRadius.circular(68),
                        ),
                        hintText: "Add a comment...",
                        hintStyle: TextStyle(color: Color(0xffAAAAAA)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(68),
                        ),
                        // errorText: _errorText,
                      ),
                    ),
                  ),
                  9.w.widthBox,
                  Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                    child: Icon(
                      Icons.play_arrow_outlined,
                      color: Colors.white,
                      size: 25.sp,
                    ),
                  ),
                ]),
              ),
            ),
            20.h.heightBox,
          ],
        ),
      ),
    );
  }

  Padding ProfileComment() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.w),
      child: ListTile(
        leading: Container(
          height: 43.h,
          width: 43.w,
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/pp.png"),
            // radius: 43.r,
          ),
        ),
        title: RichText(
          text: TextSpan(
              text: 'Lana',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp),
              children: [
                TextSpan(
                  text:
                      " Hai, whats’up bro. hayu atuh hangout dei jang Hai, whats’up bro. hayu atuh hangout dei jang ",
                  style: TextStyle(
                      color: Color(0xff525252),
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp),
                )
              ]),
        ),
        // subtitle: Text(),
      ),
    );
  }
}
