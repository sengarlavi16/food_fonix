import 'package:flutter/material.dart';
import 'package:food_fonix/core/app_colors.dart';
import 'package:oktoast/oktoast.dart';

appToast(String msg, BuildContext context) {
  return showToast(
    position: ToastPosition.bottom,
    duration: const Duration(seconds: 2),
    backgroundColor: AppColors.grey,
    textPadding: const EdgeInsets.all(10.0),
    msg,
    textStyle: const TextStyle(color: AppColors.black, fontSize: 16.0),
  );
}
