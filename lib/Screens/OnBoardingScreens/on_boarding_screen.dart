import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  OnBoardingScreenState createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.white,
            // ColorConstants.orangeShadeColor,
          ],
        )),
        child: IntroductionScreen(
            globalBackgroundColor: Colors.transparent,
            onDone: () {
              // When done button is press
            },
            showBackButton: false,
            showSkipButton: false,
            showDoneButton: false,
            showNextButton: false,
            pages: [
              PageViewModel(
                  title: "",
                  bodyWidget: Container(
                      padding: const EdgeInsets.only(top: 100),
                      child: Column(
                        children: [
                          // ImageUtils.buildImage(
                          //     ImageFiles.onBoardingImage1, 271, 307),
                          const SizedBox(
                            height: 60,
                          ),
                          // TextUtils.getText(
                          //   StringConstants.earnMoneyOnBoarding,
                          //   20,
                          //   AppConstants.robotoBoldFont,
                          // )
                        ],
                      ))),
              PageViewModel(
                  title: "",
                  bodyWidget: Container(
                      padding: const EdgeInsets.only(top: 100),
                      child: Column(
                        children: [
                          // ImageUtils.buildImage(
                          //     ImageFiles.onBoardingImage2, 271, 307),
                          const SizedBox(
                            height: 60,
                          ),
                          // TextUtils.getText(
                          //     StringConstants.advertiseOnBoarding,
                          //     20,
                          //     AppConstants.robotoBoldFont,
                          //     Colors.black,
                          //     TextAlign.center)
                        ],
                      ))),
              PageViewModel(
                  useScrollView: false,
                  title: "",
                  bodyWidget: FittedBox(
                    child: Container(
                        height: Get.height * 0.8,
                        width: Get.width,
                        // padding: const EdgeInsets.only(top: 100),
                        child: Column(
                          // direction: Axis.vertical,
                          children: [
                            // ImageUtils.buildImage(
                            //     ImageFiles.onBoardingImage3, 271.w, 307.h),
                            // Image.asset(
                            //   "assets/images/onboarding_screen/image3.png",
                            //   height: 307.h,
                            //   width: 271.w,
                            // ),
                            // SizedBox(
                            //   height: 60.h,
                            // ),
                            // TextUtils.getText(
                            //     StringConstants.clickAdOnBoarding,
                            //     20.sp,
                            //     AppConstants.robotoBoldFont,
                                // Colors.black,
                                // TextAlign.center
            
                           
                            // ButtonUtils.getRoundedCornerElevatedButton(
                            //     StringConstants.getStartedOnBoarding, () {
                            //   Navigator.pushNamed(
                            //       context, Routes.loginWithScreen);
                            // }),
                          ],
                        )),
                  )),
            ]),
      ),
    );
  }
}
