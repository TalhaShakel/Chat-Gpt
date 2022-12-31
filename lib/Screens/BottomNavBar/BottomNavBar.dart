import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:spoot_light/Controller/Maincontrollers.dart';
import 'package:spoot_light/Screens/HomeScreens/HomeScreen.dart';

class BottomNavBarScreen extends StatelessWidget {
  BottomNavBarScreen({super.key});
  var controller = Get.put(MainController());

  // int _selectIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    Get.put(CountController());
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        ///////////////////////////////////////////////////
        body: _widgetOptions[controller.index],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.r),
              topRight: Radius.circular(25.r),
            ),
            child: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  label: "",
                  icon: GestureDetector(
                      onTap: () {
                        controller.pages(0);
                      },
                      child: Container(
                          height: 24.h,
                          width: 24.h,
                          child: Image.asset(
                            "assets/h.png",
                            // color: ConstColors.NavbarIconC
                          ))),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: GestureDetector(
                      onTap: () {
                        controller.pages(1);
                      },
                      child: Container(
                          height: 24.h,
                          width: 24.h,
                          child: Image.asset("assets/bn2.png",
                              color: ConstColors.NavbarIconC))),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: GestureDetector(
                      onTap: () {
                        controller.pages(2);
                      },
                      child: Container(
                          height: 24.h,
                          width: 24.h,
                          child: Image.asset("assets/ch.png",
                              color: Colors.blue[800]))),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: GestureDetector(
                      onTap: () {
                        controller.pages(3);
                      },
                      // child: Icon(Icons.waves, color: ConstColors.NavbarIconC),
                      child: Container(
                          height: 24.h,
                          width: 24.h,
                          child: Image.asset("assets/wa.png",
                              color: ConstColors.NavbarIconC))),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: GestureDetector(
                    onTap: () {
                      controller.pages(4);
                    },
                    child: Icon(Icons.email_outlined,
                        color: ConstColors.NavbarIconC),
                  ),
                ),
              ],
              currentIndex: controller.index,
              selectedItemColor: Colors.black,
              // onTap: Get.find(),
            ),
          ),
        ),
      );
    });
  }
}

class CountController extends GetxController {
  final _selectedIndex = 0.obs;

  void _onItemTapped(int index, _selectIndex) {
    _selectIndex = index;
  }
}
