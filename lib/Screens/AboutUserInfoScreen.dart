import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:language_picker/language_picker_dropdown.dart';
import 'package:language_picker/languages.dart';
import 'package:language_picker/languages.g.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Controller/Maincontrollers.dart';
import 'package:spoot_light/Models/Service.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutUserInfo extends StatefulWidget {
  AboutUserInfo({super.key});

  @override
  State<AboutUserInfo> createState() => _AboutUserInfoState();
}

class _AboutUserInfoState extends State<AboutUserInfo> {
  final _formKey = GlobalKey<FormState>();
  List genderList = ['Male', 'Female'];
  List LanguageList = ['English', 'Urdu', 'Korean'];
  var selectedgender;
  var selectedlang;
  Uint8List? image;
  String? userImage;

  TextEditingController _genderController = TextEditingController();
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _birthdayController = TextEditingController();
  TextEditingController _languageController = TextEditingController();

  late File selected;

  @override
  void dispose() {
    _genderController.dispose();
    _userNameController.dispose();
    _birthdayController.dispose();
    _languageController.dispose();
  }

  PickedFile? img;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(MainController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                66.h.heightBox,
                Center(
                  child: Stack(
                    children: [
                      img == null
                          ? Container(
                              height: 147.h,
                              width: 147.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                "assets/p.png",
                                fit: BoxFit.cover,
                              ), //////////////////////
                            )
                          : Container(
                              height: 147.h,
                              width: 147.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                // radius: 200,
                                backgroundColor: Colors.transparent,
                                child: ClipOval(
                                  child: Image.file(
                                    selected,
                                    // Image.file(
                                    // img!.toString(),
                                    fit: BoxFit.cover,
                                    height: 147.h,
                                    width: 147.w,
                                  ),
                                ),
                              ),
                            ),
                      Positioned(
                        bottom: 10,
                        right: 4,
                        child: GestureDetector(
                          onTap: () async {
                            img = await chooseImage(ImageSource.gallery);
                            if (img != null) {
                              setState(() {
                                img;
                                selected = File(img!.path.toString());
                              });

                              // downloadurl.add(await uploadImageToStorage(img));
                              userImage = await uploadImageToStorage(img);
                            }
                          },
                          child: Container(
                            height: 30.h,
                            width: 25.w,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ], color: Colors.white, shape: BoxShape.circle),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              size: 18,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                48.h.heightBox,
                "Gender".text.size(14.sp).make(),
                10.h.heightBox,

                Container(
                  height: 50.h,
                  width: 359.w,
                  decoration: BoxDecoration(
                      color: ColorConstants.textfieldColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 3, color: ColorConstants.CircleColor)),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: DropdownButton(
                        items: genderList
                            .map((value) => DropdownMenuItem(
                                  child: Text(value),
                                  value: value,
                                ))
                            .toList(),
                        onChanged: (selectedSL) {
                          setState(() {
                            selectedgender = selectedSL;
                          });
                        },
                        value: selectedgender,
                        isExpanded: true,
                        iconSize: 30,
                        hint: Text('Male'),
                      ),
                    ),
                  ),
                ),

                25.h.heightBox,
                "Birthday".text.size(14.sp).make(),
                10.h.heightBox,

                // TextFormField(
                //   controller: _birthdayController,
                //   decoration: InputDecoration(
                //     filled: true,
                //     fillColor: ColorConstants.textfieldColor,
                //     contentPadding: EdgeInsets.all(10),
                //     // prefix:
                //     enabledBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //           color: ColorConstants.CircleColor, width: 3),
                //       borderRadius: BorderRadius.circular(15),
                //     ),
                //     focusedBorder: OutlineInputBorder(
                //       borderSide:
                //           BorderSide(color: ColorConstants.textfieldColor),
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //     hintText: "YYYY-MM-DD ",
                //     hintStyle: TextStyle(color: Colors.black),
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //   ),
                // ),

                textfiledcontainer("YYYY-MM-DD", _birthdayController),
                25.h.heightBox,
                "User Name".text.size(14.sp).make(),
                10.h.heightBox,
                textfiledcontainer("john", _userNameController),
                25.h.heightBox,
                "Language".text.size(14.sp).make(),
                10.h.heightBox,

                Container(
                  height: 50.h,
                  width: 359.w,
                  decoration: BoxDecoration(
                      color: ColorConstants.textfieldColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 3, color: ColorConstants.CircleColor)),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: DropdownButton(
                        items: LanguageList.map((value) => DropdownMenuItem(
                              child: Text(value),
                              value: value,
                            )).toList(),
                        onChanged: (selectedSL) {
                          setState(() {
                            selectedlang = selectedSL;
                          });
                        },
                        value: selectedlang,
                        isExpanded: true,
                        iconSize: 30,
                        hint: Text('English'),
                      ),
                    ),
                  ),
                ),

                ////////////////////
                66.h.heightBox,
                GestureDetector(
                  onTap: () async {
                    try {
                      firestore_update("user", currentUserData.uid, {
                        "userName": _userNameController.text.trim(),
                        "userBirthday": _birthdayController.text.trim(),
                        "userGender": selectedgender.toString(),
                        "userLanguage": selectedlang.toString(),
                        "userPicture": userImage.toString()
                        // "userPicture": ,
                      });
                    } catch (e) {
                      Get.snackbar("${e}", "");
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Color(0xff08296c),
                        content: Text("Coming Soon"),
                      ),
                    );
                  },
                  child: Container(
                    height: 50.h,
                    width: 359.w,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            ColorConstants.aiBGcolor1,
                            ColorConstants.aiBGcolor2,
                            // Color.fromRGBO(115, 186, 197, 1)
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(11))),
                    child: Center(
                      child: "NEXT"
                          .text
                          .size(13.sp)
                          .fontWeight(FontWeight.w600)
                          .make(),
                    ),
                  ),
                ),
                92.h.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Container dropdownContainer(
  TextFormField textfiledcontainer(var text, var controller) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorConstants.textfieldColor,
        contentPadding: EdgeInsets.all(10),
        // prefix:
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorConstants.CircleColor, width: 3),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorConstants.textfieldColor),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: "$text",
        hintStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
