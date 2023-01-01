import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:spoot_light/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class AddNewToDoList extends StatefulWidget {
  AddNewToDoList({super.key});

  @override
  State<AddNewToDoList> createState() => _AddNewToDoListState();
}

class _AddNewToDoListState extends State<AddNewToDoList> {
  TextEditingController _NameController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _StartTimeController = TextEditingController();
  TextEditingController _selectTagController = TextEditingController();
  String _endTime = "Select end time";
  String _TimeFormat = DateFormat('hh:mm a').format(DateTime.now()).toString();
  String _startTime = "Select start time";
  var pickedTime;
  String _formatedTime = "";

  // TextEditingController _languageController = TextEditingController();
  @override
  void dispose() {
    _StartTimeController.dispose();
    _NameController.dispose();
    _selectTagController.dispose();
    // _languageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1d2931),
        appBar: AppBar(
          backgroundColor: Color(0xff1d2931),
          elevation: 0,
          title: Text(
            "Add New Task",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            36.h.heightBox,
            Container(
              height: Get.height.h,
              width: Get.width.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.0),
                    topLeft: Radius.circular(50.0)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    35.h.heightBox,
                    "Name".text.size(14.sp).make(),
                    10.h.heightBox,
                    textfiledcontainer("Task Name", _NameController),
                    20.h.heightBox,
                    "Date".text.size(14.sp).make(),
                    10.h.heightBox,

                    Container(
                      height: 50.h,
                      width: 359.w,
                      decoration: BoxDecoration(
                          color: ConstColors.textfieldColor,
                          border: Border.all(
                              width: 1, color: ConstColors.CircleColor),
                          borderRadius: BorderRadius.all(Radius.circular(11))),
                      child: TextFormField(
                        controller: _dateController,
                        readOnly: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: ConstColors.textfieldColor,
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                          hintText: "Select Date",
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(), //get today's date
                              firstDate: DateTime(2000), //DateTime.now()
                              lastDate: DateTime(2101));

                          if (pickedDate != null) {
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                            setState(() {
                              _dateController.text = formattedDate.toString();
                            });
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: Color(0xff08296c),
                                content: Text("Date is not selected"),
                              ),
                            );
                          }
                        },
                      ),
                    ),

                    ////////////////
                    20.h.heightBox,
                    "Start Time".text.size(14.sp).make(),
                    10.h.heightBox,

                    Container(
                      height: 50.h,
                      width: 359.w,
                      decoration: BoxDecoration(
                          color: ConstColors.textfieldColor,
                          border: Border.all(
                              width: 1, color: ConstColors.CircleColor),
                          borderRadius: BorderRadius.all(Radius.circular(11))),
                      child: TextFormField(
                        controller: _dateController,
                        readOnly: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: ConstColors.textfieldColor,
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                          hintText: _startTime,
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                        onTap: () {
                          try {
                            _getTimeFromUser(isStartTime: true);
                            // print("zahdsisa   object  ----$_startTime");
                          } catch (e) {
                            Get.snackbar("${e}", "");
                          }
                        },
                      ),
                    ),

                    // textfiledcontainer("Select start time", _NameController),

                    20.h.heightBox,
                    "End Time".text.size(14.sp).make(),
                    10.h.heightBox,

                    Container(
                      height: 50.h,
                      width: 359.w,
                      decoration: BoxDecoration(
                          color: ConstColors.textfieldColor,
                          border: Border.all(
                              width: 1, color: ConstColors.CircleColor),
                          borderRadius: BorderRadius.all(Radius.circular(11))),
                      child: TextFormField(
                        controller: _dateController,
                        readOnly: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: ConstColors.textfieldColor,
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                          hintText: _endTime,
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                        onTap: () {
                          try {
                            _getTimeFromUser(isStartTime: false);
                            // print("zahdsisa   object  ----$_startTime");
                          } catch (e) {
                            Get.snackbar("${e}", "");
                          }
                        },
                      ),
                    ),

                    // textfiledcontainer("Select end time", _NameController),

                    20.h.heightBox,
                    "Tag People".text.size(14.sp).make(),
                    10.h.heightBox,
                    textfiledcontainer("Select tag", _selectTagController),
                    126.h.heightBox,
                    GestureDetector(
                      onTap: () {},
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
                          child: "ADD TASK"
                              .text
                              .size(13.sp)
                              .fontWeight(FontWeight.w600)
                              .make(),
                        ),
                      ),
                    ),
                    // 78.h.heightBox,
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }

  TextFormField textfiledcontainer(var text, var controller) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: ConstColors.textfieldColor,
        contentPadding: EdgeInsets.all(10),
        // prefix:
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ConstColors.CircleColor, width: 1),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ConstColors.textfieldColor),
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

  _getTimeFromUser({required bool isStartTime}) async {
    pickedTime = await _showTimePicker();
    if (pickedTime == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Color(0xff08296c),
          content: Text("Time is not selected"),
        ),
      );
    } else {
      _formatedTime = pickedTime.format(context);
    }

    if (pickedTime == null) {
    } else if (isStartTime == true) {
      setState(() {
        _startTime = _formatedTime;
      });
    } else if (isStartTime == false) {
      setState(() {
        _endTime = _formatedTime;
      });
    }
  }

  _showTimePicker() {
    return showTimePicker(
        initialEntryMode: TimePickerEntryMode.input,
        context: context,
        initialTime: TimeOfDay(
          //_startTime --> 10:30 AM
          hour: int.parse(_TimeFormat.split("")[0]),
          minute: int.parse(_TimeFormat.split("")[1].split(" ")[0]),
        ));
  }
}
