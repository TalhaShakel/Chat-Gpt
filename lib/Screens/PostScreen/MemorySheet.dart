import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Controller/Maincontrollers.dart';
import 'package:spoot_light/Screens/PostScreen/AddMemoryScreen.dart';
import 'package:spoot_light/Screens/PostScreen/CreateAnAudio1.dart';
import 'package:spoot_light/Screens/PostScreen/CreatePostScreen.dart';
import 'package:velocity_x/velocity_x.dart';

class MemorySheet extends StatelessWidget {
  MemorySheet({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = MainController.instance;
    return Container(
      height: 391.h,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(19)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 30.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // 21.h.heightBox,
            GestureDetector(
                onTap: () {
                  Get.to(() => AddMemoryScreen());
                },
                child: _sheetContainer(Icon(Icons.add), "Add a memory")),
            20.h.heightBox,
            GestureDetector(
                onTap: () {
                  Get.to(() => CreatePostScreen());
                },
                child: _sheetContainer(Icon(Icons.edit), "Create a post")),
            20.h.heightBox,
            GestureDetector(
                onTap: () {
                  Get.to(() => CreateAudioRoom1());
                },
                child: _sheetContainer(
                    Icon(Icons.audiotrack), "Create an audio room")),
            20.h.heightBox,
            _sheetContainer(Icon(Icons.person_add_alt), "Make new friends"),
            20.h.heightBox,
            _sheetContainer(Icon(Icons.photo_album), "Generate an image"),
          ]),
        ),
      ),
    );
  }

  Row _sheetContainer(Icon iconName, var name) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 52.w,
          height: 52.h,
          decoration: BoxDecoration(
            color: Color(0xffF2F2F2),
            shape: BoxShape.circle,
          ),
          child: Center(child: iconName),
        ),
        19.w.widthBox,
        Text(
          "$name",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
        ),
      ],
    );
  }
}
