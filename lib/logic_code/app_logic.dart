import 'package:flutter/material.dart';

class BmiAppLogic {
  String result = '';
  var bmi;
  var clr = Colors.white;

  String getResult(String val1, val2, val3) {
    var weight = val1;
    var feet = val2;
    var inch = val3;

    if (weight != '' && feet != '' && inch != '') {
      var iweight = int.parse(weight);
      var ifeet = int.parse(feet);
      var iInch = int.parse(inch);

      var tinch = (ifeet * 12) + iInch;
      var tcm = tinch * 2.54;
      var tm = tcm / 100;

      bmi = iweight / (tm * tm);
      if (bmi > 25) {
        clr = Colors.red.shade100;
      }
      if (bmi < 18) {
        clr = Colors.green.shade100;
      }
      if (bmi > 18 && bmi < 25) {
        clr = Colors.yellow.shade100;
      }
    }
    return result = bmi.toStringAsFixed(2);
  }
}
