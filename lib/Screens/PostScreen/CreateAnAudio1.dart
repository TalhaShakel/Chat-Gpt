import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Screens/PostScreen/AddPeopleAudioRoom.dart';
import 'package:velocity_x/velocity_x.dart';

class CreateAudioRoom1 extends StatelessWidget {
  CreateAudioRoom1({super.key});

  TextEditingController _titleController = TextEditingController();
  TextEditingController _topicController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _topicController.dispose();
    _descriptionController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2931),
      appBar: AppBar(
        backgroundColor: Color(0xff1d2931),
        elevation: 0,
        title: Text(
          "Create an audio room",
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
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    25.h.heightBox,
                    Container(
                      height: 250.h,
                      width: 349.w,
                      child: Stack(
                        children: [
                          Container(
                              height: 216.h,
                              width: 349,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18))),
                              child: Image.asset(
                                "assets/post.png",
                                fit: BoxFit.fill,
                              )),
                          Positioned(
                            bottom: 15,
                            right: 50,
                            left: 50,
                            child: Center(
                              child: Container(
                                height: 40.h,
                                width: 35.w,
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ], color: Colors.white, shape: BoxShape.circle),
                                child: Icon(Icons.camera_alt),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    27.h.heightBox,
                    Text(
                      "Title",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 14.sp),
                    ),
                    10.h.heightBox,
                    TextField(
                      controller: _titleController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: ConstColors.textfieldColor,
                        contentPadding: EdgeInsets.all(10),
                        // prefix:
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ConstColors.CircleColor, width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ConstColors.textfieldColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "My Future",
                        hintStyle:
                            TextStyle(fontSize: 15.sp, color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    20.h.heightBox,
                    Text(
                      "Topic",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 14.sp),
                    ),
                    10.h.heightBox,
                    TextField(
                      controller: _topicController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: ConstColors.textfieldColor,
                        contentPadding: EdgeInsets.all(10),
                        // prefix:
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ConstColors.CircleColor, width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ConstColors.textfieldColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "",
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    20.h.heightBox,
                    Text(
                      "Description",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 14.sp),
                    ),
                    10.h.heightBox,
                    
                    Container(
                      height: 115.h,
                      width: 359.w,
                      child: TextField(
                        controller: _descriptionController,
                        maxLines: 6,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: ConstColors.textfieldColor,
                          contentPadding: EdgeInsets.all(10),
                          // prefix:
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: ConstColors.CircleColor, width: 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: ConstColors.textfieldColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Description",
                          hintStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                   
                    25.h.heightBox,
                    GestureDetector(
                      onTap: () {
                        Get.to(() => AddPeopleAudioRoom());
                      },
                      child: Container(
                        height: 50.h,
                        width: 359.w,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: ConstColors.btnColor),
                            // Color.fromRGBO(115, 186, 197, 1)
                            borderRadius:
                                BorderRadius.all(Radius.circular(11))),
                        child: Center(
                          child: Text(
                            "Add people",
                            style: TextStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                    // 154.h.heightBox,
                    Spacer(),
                  ],
                ),
              )),
        ],
      )),
    );
  }
}
