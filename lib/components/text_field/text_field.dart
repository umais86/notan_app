import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/theme/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String iconPath;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hint: Text(
          hint,
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 14.sp,
            fontWeight: FontWeight.w300,
            color: subColor,
          ),
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.all(12.w),
          child: Image.asset(iconPath, height: 24.h, width: 24.w),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
        border: OutlineInputBorder(borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: txtGcolor, width: 1.5),
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
    );
  }
}
