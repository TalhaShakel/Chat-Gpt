import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatAllMessages extends StatelessWidget {
  const ChatAllMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          25.h.heightBox,
          Text("Checking"),
          Slidable(
            key: const ValueKey(0),
            endActionPane: ActionPane(
              motion: ScrollMotion(),
              children: [
                Container(
                  height: 59.h,
                  width: 61.w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: ConstColors.btnColor),
                  ),
                  child: SlidableAction(
                    onPressed: null,
                    foregroundColor: Colors.pink,
                    icon: Icons.delete,
                    label: '',
                  ),
                ),
              ],
            ),
            child: ListTile(
                leading: Container(
                  height: 43.h,
                  width: 43.w,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/pp.png"),
                    // radius: 43.r,
                  ),
                ),
                title: Text(
                  "Lana",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp),
                ),
                subtitle: Text(
                  "Hai, whats up bro. hayu atuh hangout dei jang Sabrina",
                  style: TextStyle(color: Color(0xff606060), fontSize: 10),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 16.h,
                      width: 16.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                      child: Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 10.sp),
                        ),
                      ),
                    ),
                    Text(
                      "2:30 PM",
                      style: TextStyle(
                          color: Color(0xff8B8B8B),
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
