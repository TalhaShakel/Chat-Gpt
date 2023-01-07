import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatCommunities extends StatelessWidget {
  const ChatCommunities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          25.h.heightBox,
          AllMessages(),
          AllMessages(),
          AllMessages(),
          AllMessages(),
          AllMessages(),
          AllMessages(),
          AllMessages(),
          AllMessages(),
          AllMessages(),
          Stack(
            children: [
              Container(
                height: 81.h,
                // width: 350.w,
                width: Get.width.w,
                child: Image.asset("assets/mf2.png"),
              ),
              Positioned(
                right: 4.h,
                top: 15.w,
                child: Container(
                  height: 22.h,
                  width: 22.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.transparent,
                      shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AllMessages extends StatelessWidget {
  const AllMessages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.w),
      child: Slidable(
        key: ValueKey(0),
        endActionPane: ActionPane(
          motion: ScrollMotion(),
          // dismissible: DismissiblePane(onDismissed: () {}),
          extentRatio: 0.2,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                      alignment: Alignment.center,
                      height: 59.h,
                      width: 61.w,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: ConstColors.btnColor),
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.delete,
                          color: Colors.pink,
                          size: 20,
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
        child: ListTile(
            leading: Container(
              height: 61.h,
              width: 61.w,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/pp.png"),
                // radius: 43.r,
              ),
            ),
            title: Text(
              "Lana",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp),
            ),
            subtitle: Text(
              "Hai, whats up bro. hayu atuh hangout dei jang Sabrina",
              style: TextStyle(color: Color(0xff606060), fontSize: 10),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 16.h,
                  width: 16.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp),
                    ),
                  ),
                ),
                Text(
                  "2:30 PM",
                  style: TextStyle(
                      color: Color(0xff8B8B8B),
                      fontWeight: FontWeight.w500,
                      fontSize: 10.sp),
                ),
              ],
            )),
      ),
    );
  }
}
