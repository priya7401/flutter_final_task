import 'package:built_collection/built_collection.dart';
import 'package:final_task/core/values/app_constants.dart';
import 'package:flutter/material.dart';

class DartHelper {
  static bool isNullOrEmpty(String value) => value == '';

  static MaterialPageRoute pushMethod(dynamic value) =>
      MaterialPageRoute<void>(builder: (BuildContext context) => value);

  static bool isMobileNumber(String value) =>
      RegExp(AppConstants.MobileNumberPattern).hasMatch(value);

  static bool isIFSCCode(String value) =>
      RegExp(AppConstants.IFSCCodePattern).hasMatch(value);

  static bool isNullOrEmptyList(BuiltList<dynamic> list) =>
      list.isEmpty || list.isEmpty;

  static bool isNullOrEmptyLists(List<dynamic> list) =>
      list.isEmpty || list.isEmpty;
}
