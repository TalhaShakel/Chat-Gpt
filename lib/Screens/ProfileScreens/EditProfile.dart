import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});

  TextEditingController _emailController = TextEditingController();
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _userNameController.dispose();
    _passwordController.dispose();
    _descriptionController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/bg.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              100.h.heightBox,
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
                                  "User Name",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp),
                                ),
                                textfiledContainer(
                                    _userNameController, "My Future"),
                                10.h.heightBox,
                                Text(
                                  "Email Id",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp),
                                ),
                                textfiledContainer(
                                    _emailController, "asd@gmail.com"),
                                10.h.heightBox,
                                Text(
                                  "Description",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp),
                                ),
                                textfiledContainer(
                                    _descriptionController, "Description"),
                                10.h.heightBox,
                                Text(
                                  "Password",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp),
                                ),
                                textfiledContainer(
                                    _passwordController, "sdkj2343"),
                                139.h.heightBox,
                                Container(
                                  height: 50.h,
                                  width: 359.w,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: ConstColors.btnColor),
                                      // Color.fromRGBO(115, 186, 197, 1)
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Center(
                                    child: Text(
                                      "UPDATE",
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
                          Positioned(
                            bottom: 0,
                            left: 50,
                            right: 50,
                            child: GestureDetector(
                              onTap: () {},
                              child: Center(
                                child: Container(
                                    height: 23.h,
                                    width: 19.w,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.camera_alt_outlined,
                                      color: Colors.white,
                                      size: 15.sp,
                                    )),
                              ),
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
