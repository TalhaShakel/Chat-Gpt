import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Constants/utils.dart';
import 'package:spoot_light/Models/PostModel.dart';
import 'package:spoot_light/Models/Service.dart';
import 'package:spoot_light/Screens/MainHomeScreen/MainHomeScreen.dart';
import 'package:uuid/uuid.dart';
import 'package:velocity_x/velocity_x.dart';

class CreatePostScreen extends StatefulWidget {
  CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  late File selected;

  PickedFile? img;

  TextEditingController _headingController = TextEditingController();

  TextEditingController _subHeadingController = TextEditingController();

  String photoUrl = "";
  uploadpost(
    img,
    String heading,
    subhead,
  ) async {
    try {
      photoUrl = await uploadImageToStorage(img);
      String postId = const Uuid().v1();
      Post post = Post(
        head: heading,
        subhead: subhead,
        uid: currentUserData.uid.toString().trim(),
        username: currentUserData.userName.toString().trim(),
        likes: [],
        postId: postId,
        datePublished: DateTime.now(),
        postUrl: photoUrl,
        profImage: currentUserData.userPicture.toString().trim(),
      );
      await firestore_set('posts', postId, post.toJson());
      // showSnackBar("Posted", "");
      clearImage();
      // Get.offAll(() => MainHomeScreen());

      Get.back();
      showSnackBar("Posted", "");
    } catch (e) {
      print(e);
    }
  }

  void clearImage() {
    setState(() {
      img = null;

      // selected.path = "";
    });
  }

  // @override
  // void dispose() {
  //   _headingController.dispose();
  //   _subHeadingController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2931),
      appBar: AppBar(
        backgroundColor: Color(0xff1d2931),
        elevation: 0,
        title: Text(
          "Create a post",
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
                              child: img == null
                                  ? Image.asset(
                                      "assets/post.png",
                                      fit: BoxFit.fill,
                                    )
                                  : Image.file(
                                      selected,
                                      fit: BoxFit.fill,
                                    )),
                          Positioned(
                            bottom: 15,
                            right: 50,
                            left: 50,
                            child: GestureDetector(
                              onTap: () async {
                                img = await chooseImage(ImageSource.gallery);
                                if (img != null) {
                                  setState(() {
                                    img;
                                    selected = File(img!.path.toString());
                                  });
                                }
                              },
                              child: Center(
                                child: Container(
                                  height: 40.h,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 3,
                                          blurRadius: 5,
                                          offset: Offset(0,
                                              5), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Icon(Icons.camera_alt),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    50.h.heightBox,
                    Text(
                      "Heading",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 14.sp),
                    ),
                    10.h.heightBox,
                    TextField(
                      controller: _headingController,
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
                        hintText: "Haye I’m crazy.",
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    20.h.heightBox,
                    Text(
                      "Sub-Heading",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 14.sp),
                    ),
                    10.h.heightBox,
                    TextField(
                      controller: _subHeadingController,
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
                        hintText: "Hello how are you?",
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    // 152.h.heightBox,
                    Spacer(),
                    GestureDetector(
                      onTap: () async {
                        // Get.to(() => CreateAudioRoom1());
                        // Get.back();
                        if (img == null ||
                            _headingController.text.trim().toString() == "") {
                          Get.snackbar("Fill all the fields", "");
                        } else {
                          await uploadpost(
                              img,
                              _headingController.text.trim().toString(),
                              _subHeadingController.text.toString().trim());
                        }
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
                            "POST",
                            style: TextStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                    20.h.heightBox,
                    // Spacer(),
                  ],
                ),
              )),
        ],
      )),
    );
  }
}
