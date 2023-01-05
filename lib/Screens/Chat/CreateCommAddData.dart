import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class CreateCommAddData extends StatelessWidget {
  CreateCommAddData({super.key});

  TextEditingController _commNameController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    _locationController.dispose();
    _commNameController.dispose();
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
          "Create a Coummunity",
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
            22.h.heightBox,
            Stack(
              children: [
                Column(
                  children: [
                    50.h.heightBox,
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
                              80.h.heightBox,
                              Text(
                                "Community Name",
                                style: TextStyle(fontSize: 14.sp),
                              ),
                              textfiledContainer(
                                  _commNameController, "My Future"),
                              30.h.heightBox,
                              Text(
                                "Location",
                                style: TextStyle(fontSize: 14.sp),
                              ),
                              textfiledContainer(
                                  _locationController, "Mumbai, India"),
                              30.h.heightBox,
                              Text(
                                "Description",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp),
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
                                          color: ConstColors.CircleColor,
                                          width: 1),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ConstColors.textfieldColor),
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
                              76.h.heightBox,
                              Container(
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
                                    "Create",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 13.sp),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 100.h,
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            height: 87.h,
                            width: 81.w,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 3, color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(28.r))),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 81.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(28.r))),
                            child: Image.asset("assets/pro.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding textfiledContainer(var controller, var hinttxt) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.w),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: ConstColors.textfieldColor,
          contentPadding: EdgeInsets.all(10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ConstColors.CircleColor, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ConstColors.textfieldColor),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: "$hinttxt",
          hintStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
