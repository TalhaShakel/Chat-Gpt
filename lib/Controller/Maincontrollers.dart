import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  /////////// Male & Female ////////////////
  
  var gender = "";
  isselect(select) {
    gender = select;
    refresh();
  }


  var index = 0;
  pages(index1) {
    index = index1;
    refresh();
  }

  var check = "";
  isgender(gender) {
    check = gender;
    refresh();
  }

  var number = "";
  isSelectNum(num) {
    number = num;
    refresh();
  }
}
