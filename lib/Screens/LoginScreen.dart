import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Constants/customized_textformfield.dart';
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
                  child: Image.asset("assets/b.png"),
                ),
                9.h.heightBox,
                "Email".text.size(14.sp).make(),
                10.h.heightBox,
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorConstants.textfieldColor,
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                    ),
                    contentPadding: EdgeInsets.all(10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: ColorConstants.CircleColor, width: 3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: ColorConstants.textfieldColor),
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
                    Expanded(
                      child: "I agree to the User Agreement and Privacy Policy"
                          .text
                          .softWrap(true)
                          .size(12.sp)
                          .make(),
                    ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
