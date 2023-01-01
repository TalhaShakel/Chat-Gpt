import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Constants/customized_textformfield.dart';
import 'package:spoot_light/Controller/Maincontrollers.dart';
import 'package:spoot_light/Models/Service.dart';
import 'package:spoot_light/Models/UserModels.dart';
import 'package:spoot_light/Screens/AI_Screens/AIScreen.dart';
import 'package:spoot_light/Screens/AuthScreens/SignUpScreen.dart';
import 'package:spoot_light/Screens/BottomNavBar/BottomNavBar.dart';
import 'package:spoot_light/Screens/ProfileScreens/AboutUserInfoScreen.dart';
import 'package:spoot_light/Screens/ProfileScreens/PickTopicScreen.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
  }

  bool value = false;

  signIn() async {
    if (_emailController.text == "" || _passwordController == "") {
      Get.snackbar("Please Fill this fields ", "");
    } else {
      try {
        EasyLoading.show();
        UserCredential credential = await fAuth.signInWithEmailAndPassword(
            email: _emailController.text.trim().toString(),
            password: _passwordController.text.trim().toString());
        UserModel newUser = UserModel(
          uid: credential.user!.uid,
          userPassword: _passwordController.text.trim().toString(),
          userEmail: _emailController.text.trim().toString(),
        );
        var document = await firestore_get(
          "user",
          credential.user!.uid,
        );
        UserModel userdata =
            UserModel.fromMap(document.data() as Map<String, dynamic>);
        currentUserData = userdata;
        // Get.to(() => AboutUserInfo());
        Get.to(() => BottomNavBarScreen());

        //////////////////////////////////

        EasyLoading.dismiss();
      } on FirebaseAuthException catch (e) {
        EasyLoading.dismiss();
        Get.snackbar("${e.message}", "");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                50.h.heightBox,
                Center(
                    child: "Sign In"
                        .text
                        .size(28.sp)
                        .fontWeight(FontWeight.w600)
                        .make()),
                Center(
                  child: Container(
                    height: 203.h,
                    width: 203.w,
                    child: Center(
                      child: Image.asset(
                        "assets/b.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                9.h.heightBox,
                "Email".text.size(14.sp).make(),
                10.h.heightBox,
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ConstColors.textfieldColor,
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                    ),
                    contentPadding: EdgeInsets.all(10),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: ConstColors.CircleColor, width: 3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ConstColors.textfieldColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "brucewayne@gmail.com",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // errorText: _errorText,
                  ),
                ),
                30.h.heightBox,
                "Password".text.size(14.sp).make(),
                10.h.heightBox,
                CustomizedTextFormfield(
                  myController: _passwordController,
                  isPassword: true,
                  hintText: ". . . . . .",
                ),
                15.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        value = !value;
                      },
                      child: Container(
                          height: 17.h,
                          width: 17.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 2,
                                color: Color(0xffF2D5DD),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: value
                              ? Icon(
                                  Icons.check,
                                  size: 15.0,
                                  color: Color(0xffF2D5DD),
                                )
                              : Icon(
                                  Icons.check,
                                  size: 15.0,
                                  color: Color(0xffF2D5DD),
                                )),
                    ),
                    9.w.widthBox,
                    Expanded(
                      child: "I agree to the User Agreement and Privacy Policy"
                          .text
                          .softWrap(true)
                          .size(12.sp)
                          .make(),
                    ),
                    29.w.widthBox,
                    "Forgot password?"
                        .text
                        .softWrap(true)
                        .fontWeight(FontWeight.w500)
                        .size(14.sp)
                        .make(),
                  ],
                ),
                44.h.heightBox,
                Center(
                  child: "Or sign in with"
                      .text
                      .softWrap(true)
                      .fontWeight(FontWeight.w400)
                      .size(14.sp)
                      .make(),
                ),
                17.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    socialContainer("Google", "assets/g.png"),
                    socialContainer("Apple", "assets/a.png"),
                  ],
                ),
                55.h.heightBox,
                GestureDetector(
                  onTap: () async {
                    await signIn();
                    MainController.instance;
                  },
                  child: Container(
                    height: 50.h,
                    width: 359.w,
                    decoration: BoxDecoration(
                        // color: ConstColors.Lbutton,
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: ConstColors.btnColor),
                        borderRadius: BorderRadius.all(Radius.circular(11))),
                    child: Center(
                      child: "SIGN IN"
                          .text
                          .size(13.sp)
                          .fontWeight(FontWeight.w800)
                          .make(),
                    ),
                  ),
                ),
                32.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "Don’t have an account yet?"
                        .text
                        .softWrap(true)
                        .fontWeight(FontWeight.w400)
                        .size(14.sp)
                        .make(),
                    6.w.widthBox,
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SignUpScreen());
                      },
                      child: "Sign Up"
                          .text
                          .softWrap(true)
                          .fontWeight(FontWeight.w600)
                          .size(16.sp)
                          .make(),
                    ),
                  ],
                ),
                38.h.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container socialContainer(var Name, var imagePath) {
    return Container(
      height: 50.h,
      width: 154.w,
      decoration: BoxDecoration(
          color: ConstColors.CircleColor,
          borderRadius: BorderRadius.all(Radius.circular(69))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          25.w.widthBox,
          "$Name"
              .text
              .softWrap(true)
              .fontWeight(FontWeight.w500)
              .size(18.sp)
              .make(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.h),
            child: Container(
                height: 44.h,
                width: 44.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Image.asset("$imagePath")),
          ),
        ],
      ),
    );
  }
}
