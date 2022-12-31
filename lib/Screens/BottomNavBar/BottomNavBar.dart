import 'package:flutter/material.dart';
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
    // MyRequestScreen(),
    // MainSearchScreen(),
    // ChatScreen(),
    // MyProfileM()
  ];

  @override
  Widget build(BuildContext context) {
    Get.put(CountController());
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        ///////////////////////////////////////////////////
        body: _widgetOptions[controller.index],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "",
              icon: GestureDetector(
                  onTap: () {
                    controller.pages(0);
                  },
                  child: Container(
                    child: Icon(Icons.home),
                  )
                  //  Icon(
                  //  Image.asset(name)
                  //   // color: Color(0xff08296c),
                  //   color: ColorConstants.primaryDarkColor,
                  // ),
                  ),
              // label: 'DashBoard',
            ),
            BottomNavigationBarItem(
              label: "",
              icon: GestureDetector(
                onTap: () {
                  controller.pages(1);
                },
                                  child: Icon(Icons.home),

              ),
              // label: 'Setting',
            ),
            BottomNavigationBarItem(
              label: "",
              icon: GestureDetector(
                onTap: () {
                  controller.pages(2);
                },
                                   child: Icon(Icons.home),

              ),
              // label: 'Setting',
            ),
            BottomNavigationBarItem(
              label: "",
              icon: GestureDetector(
                onTap: () {
                  controller.pages(3);
                },
                                    child: Icon(Icons.home),

              ),
              // label: 'Setting',
            ),
            /////////////////////////////////////
            BottomNavigationBarItem(
              label: "",
              icon: GestureDetector(
                onTap: () {
                  controller.pages(4);
                },
                                  child: Icon(Icons.home),

              ),
              // label: 'My Profile',
            ),
            ///////////////////////////////////
          ],
          currentIndex: controller.index,
          selectedItemColor: Colors.blue,
          // onTap: Get.find(),
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