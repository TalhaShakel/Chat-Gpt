import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';

class AIButton extends StatelessWidget {
  String? buttonName;
  VoidCallback funcname;
  var colorButton;

  AIButton(
      {super.key,
      required this.buttonName,
      required this.funcname,
      required this.colorButton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: funcname,
      // () {
      //   // if (controller.check == "man" || controller.check == "women") {
      //   //   firestore_update(
      //   //       "user", currentUserData.uid, {"gender": controller.check});
      //   //   Get.to(() => ProfileCreationScreen());
      //   // } else {
      //   //   Get.snackbar("Please select your gender", "");
      //   // }
      // },
      child: Text(
        buttonName!,
        style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontWeight: FontWeight.w400,
            fontSize: 17.sp),
      ),
      style: ElevatedButton.styleFrom(
        side: BorderSide(width: 1, color: Colors.white),
        primary: colorButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(69.0),
        ),
      ),
    );
  }
}
