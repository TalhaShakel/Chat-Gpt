import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Constants/customcontainer.dart';
import 'package:spoot_light/Controller/profile_controller.dart';
import 'package:spoot_light/Models/Service.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController profileController = Get.put(ProfileController());

    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            elevation: 0,
            title: Text(
              "Profile",
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
                child: Center(
                    child: Icon(
                  Icons.settings_outlined,
                  color: Colors.white,
                  size: 20,
                )),
              ),
              21.w.widthBox,
            ],
            backgroundColor: Colors.transparent),
        body: Builder(builder: (context) {
          return GetBuilder<ProfileController>(
              init: ProfileController(),
              builder: (controller) {
                return SingleChildScrollView(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // padding: EdgeInsets.symmetric(horizontal: 22.h),

                      Container(
                        // color: Colors.amber,
                        height: 241.h,
                        child: Stack(
                          children: [
                            Container(
                              height: 200.h,
                              width: Get.width,
                              child: ClipPath(
                                clipper: MyCustomClipper(),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,

                                    // shape: BoxShape.values[]
                                    image: DecorationImage(
                                        image: AssetImage("assets/bg.png"),
                                        fit: BoxFit.cover),
                                  ),
                                  // child: Image.asset(
                                  //   "assets/bg.png",
                                  //   width: Get.width,
                                  //   fit: BoxFit.fitHeight,
                                  // ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10.h,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: Get.width % 121.w),
                                child: SizedBox(
                                  height: 121.h,
                                  width: 121.w,
                                  child: CircleAvatar(
                                    radius: 100.r,
                                    backgroundImage: NetworkImage(
                                      currentUserData.userPicture.toString(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // coming
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 22.h),
                        child: Column(
                          children: [
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
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10.sp),
                                ),
                              ],
                            ),
                            22.h.heightBox,

                            Text(
                              currentUserData.userName.toString() ??
                                  "Michael Lurk ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32.sp,
                                  fontWeight: FontWeight.w800),
                            ),
                            22.h.heightBox,
                            Text(
                              "Today I've amazing moment, when I went to my office, I found my old watch in the ...",
                              softWrap: true,
                              style: TextStyle(
                                  fontSize: 14.sp, color: Color(0xff6C6C6C)),
                            ),
                            19.h.heightBox,

                            20.h.heightBox,

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 31.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(60.r))),
                                  child: Center(
                                    child: Text(
                                      "MESSAGE",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 31.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: ConstColors.btnColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(60.r))),
                                  child: Center(
                                    child: Text(
                                      "FOLLOW",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 31.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: ConstColors.btnColor),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(60.r))),
                                  child: Center(
                                    child: Text(
                                      "Subscribe",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            27.h.heightBox,

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                followingdetials("Followers", "682"),
                                20.w.widthBox,
                                followingdetials("Following", "20k"),
                                20.w.widthBox,
                                followingdetials("Posts", "200"),
                                20.w.widthBox,
                                followingdetials("Subscribers", "200"),
                              ],
                            ),

                            23.h.heightBox,

                            Divider(),

                            20.h.heightBox,

                            Text(
                              "Related Tagg",
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w600),
                            ),

                            16.h.heightBox,

                            // GridView.count(

                            //     physics: ScrollPhysics(),

                            //     childAspectRatio: (99.w / 31.h),

                            //     crossAxisCount: 3,

                            //     mainAxisSpacing: 15,

                            //     crossAxisSpacing: 15,

                            //     shrinkWrap: true,

                            //     scrollDirection: Axis.vertical,

                            //     children: List.generate(6, (index) {

                            //       return suggestContainer("Language");

                            //     })),

                            Row(
                              children: [
                                suggestContainer("Language"),
                                suggestContainer("Language"),
                              ],
                            ),

                            20.h.heightBox,

                            Divider(),

                            20.h.heightBox,
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    controller.isfeed(false);
                                  },
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Feed",
                                          style: TextStyle(
                                              // color: Color(0xffA7A7A7),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        4.h.heightBox,
                                        if (controller.aiProfiledata == false)
                                          Container(
                                            height: 3.h,
                                            width: 37.w,
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                    colors:
                                                        ConstColors.btnColor),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(11))),
                                          ),
                                        30.h.heightBox,
                                      ],
                                    ),
                                  ),
                                ),
                                116.w.widthBox,
                                GestureDetector(
                                  onTap: () {
                                    controller.isfeed(true);
                                  },
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "AI",
                                          style: TextStyle(
                                              // color: Color(0xffA7A7A7),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        4.h.heightBox,
                                        if (controller.aiProfiledata == true)
                                          Container(
                                            height: 3.h,
                                            width: 15.w,
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                    colors:
                                                        ConstColors.btnColor),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(11))),
                                          ),
                                        30.h.heightBox,
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            //////////////////////////////////////////
                            if (controller.aiProfiledata == false)
                              feedContainer(),

                            if (controller.aiProfiledata == true) aipost(),
                            20.h.heightBox,
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              });
        }));
  }

  Container aipost() {
    return Container(
      height: 132.h,
      width: 110.w,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/c2.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Column followingdetials(
    var txtName,
    var number,
  ) {
    return Column(
      children: [
        Text(
          "$txtName",
          style: TextStyle(
              fontSize: 14.sp, letterSpacing: 0.4, color: Color(0xff6C6C6C)),
        ),
        8.h.heightBox,
        Text(
          "$number",
          style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
      ],
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

  feedContainer() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 37.h,
            width: 34.w,
            child: Image.asset("assets/pp.png"),
          ),
          11.w.widthBox,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Allison Becker",
                    // overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  9.w.widthBox,
                  Text(
                    "12m",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  PopupMenuButton(
                    child: Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.grey,
                      size: 30,
                    ),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                          value: 'edit',
                          child: Text('Edit'),
                        ),
                        PopupMenuItem(
                          value: 'delete',
                          child: Text('Delete'),
                        )
                      ];
                    },
                    onSelected: (String value) {
                      print('You Click on po up menu item');
                    },
                  ),
                  // 40.w.widthBox,
                ],
              ),
              3.h.heightBox,
              Container(
                height: 34.h,
                width: 230.w,
                child:
                    "Today I've amazing moment, when I went to my office, I found my old watch in the ..."
                        .text
                        .color(Colors.black)
                        .softWrap(true)
                        .size(12.sp)
                        .fontWeight(FontWeight.w500)
                        // .overflow(TextOverflow.ellipsis)
                        .make(),
              ),

              // Text(
              //   "Today I've amazing moment, when I went to my office, I found my old watch in the ...",
              //   style: TextStyle(
              //       fontSize: 12.sp,
              //       fontWeight: FontWeight.w500,
              //       color: Colors.black),
              //   softWrap: true,
              //   overflow: TextOverflow.ellipsis,
              // ),

              15.h.heightBox,
              Container(
                  height: 216.h,
                  width: 250.w,
                  child: Image.asset(
                    "assets/post.png",
                    fit: BoxFit.cover,
                  )),
              10.h.heightBox,
              Row(
                children: [
                  Container(
                      height: 15.h,
                      width: 15.w,
                      child: Image.asset(
                        "assets/lk.png",
                        color: ConstColors.IconColor,
                      )),
                  // Icon(
                  //   Icons.thumb_up_outlined,
                  //   color: Color(0xff6B6D7D),
                  //   size: 20,
                  // ),
                  5.w.widthBox,
                  Text(
                    "1201",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: ConstColors.IconColor),
                  ),
                  29.w.widthBox,
                  // Icon(
                  //   Icons.thumb_up_outlined,
                  //   color: Color(0xff6B6D7D),
                  //   size: 20,
                  // ),
                  Container(
                      height: 15.h,
                      width: 15.w,
                      child: Image.asset(
                        "assets/ms.png",
                        color: ConstColors.IconColor,
                      )),

                  5.w.widthBox,
                  Text(
                    "24",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: ConstColors.IconColor),
                  ),
                  29.w.widthBox,
                  // Icon(
                  //   Icons.thumb_up_outlined,
                  //   color: Color(0xff6B6D7D),
                  //   size: 20,
                  // ),
                  Container(
                      height: 15.h,
                      width: 15.w,
                      child: Image.asset(
                        "assets/sh.png",
                        color: ConstColors.IconColor,
                      )),
                  5.w.widthBox,
                  Text(
                    "Share",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: ConstColors.IconColor),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
