import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Screens/AuthScreens/LoginScreen.dart';
import 'package:velocity_x/velocity_x.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  OnBoardingScreenState createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 3.0),
      height: 8.h,
      width: isActive ? 8.w : 8.w,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.h),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 600.h,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          48.h.heightBox,
                          Center(
                            child: Image(
                              image: AssetImage(
                                'assets/b.png',
                              ),
                            ),
                          ),
                          18.h.heightBox,
                          Center(
                            child: Text(
                              'Welcome to Classic',
                              textAlign: TextAlign.center,
                              softWrap: true,
                              style: TextStyle(
                                  fontSize: 35.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                              // style: kTitleStyle,
                            ),
                          ),
                          SizedBox(height: 40.h),
                          Text(
                            'With Classic, you can go live with your friends, share thoughts in global audio events and promote your services at a global as well as local level.',
                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: TextStyle(fontSize: 14.sp, height: 1.5),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage(
                              'assets/b.png',
                            ),
                          ),
                        ),
                        18.h.heightBox,
                        Center(
                          child: Text(
                            'Explore the world like never before',
                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 35.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            // style: kTitleStyle,
                          ),
                        ),
                        SizedBox(height: 43.h),
                        Text(
                          'Join and participate in global events.  Share your thoughts globally and build your community.  Upload disappearing memories for the world to see and schedule events for your global community to join.',
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: TextStyle(fontSize: 14.sp, height: 1.5),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage(
                              'assets/b.png',
                            ),
                            height: 300.0,
                            width: 300.0,
                          ),
                        ),
                        18.h.heightBox,
                        Center(
                          child: Text(
                            'Spotlight is the first global media.',
                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 35.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            // style: kTitleStyle,
                          ),
                        ),
                        SizedBox(height: 43.h),
                        Text(
                          'Join and participate in global events.  Share your thoughts globally and build your community.  Upload disappearing memories for the world to see and schedule events for your global community to join.',
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: TextStyle(fontSize: 14.sp, height: 1.5),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              20.h.heightBox,
              GestureDetector(
                onTap: () {
                  Get.to(() => LoginScreen());
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
                    child: "GET STARTED"
                        .text
                        .size(13.sp)
                        .fontWeight(FontWeight.w600)
                        .make(),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      // bottomSheet: _currentPage == _numPages - 1
      // ? Container(
      //     height: 100.0,
      //     width: double.infinity,
      //     color: Colors.white,
      //     child: GestureDetector(
      //       onTap: () => print('Get started'),
      //       child: Center(
      //         child: Padding(
      //           padding: EdgeInsets.only(bottom: 30.0),
      //           child: Text(
      //             'Get started',
      //             style: TextStyle(
      //               color: Color(0xFF5B16D0),
      //               fontSize: 20.0,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   )
      // : Text(''),
    );
  }
}
