import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/theme/colors.dart';

class ProjectTxtField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String iconPath;
  final String? iconPath2;

  const ProjectTxtField({
    super.key,
    required this.controller,
    required this.hint,
    required this.iconPath,
    this.iconPath2,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          fontFamily: 'Outfit',
          fontSize: 14.sp,
          fontWeight: FontWeight.w300,
          color: subColor,
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.all(12.w),
          child: Image.asset(
            iconPath,
            height: 24.h,
            width: 24.w,
            color: subColor,
          ),
        ),
        suffixIcon: iconPath2 != null && iconPath2!.isNotEmpty
            ? Padding(
                padding: EdgeInsets.all(12.w),
                child: Image.asset(
                  iconPath2!,
                  height: 24.h,
                  width: 24.w,
                  color: subColor,
                ),
              )
            : null,
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
    );
  }
}
