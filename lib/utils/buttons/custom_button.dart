import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/theme/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color? color;
  final Color? textcolor;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.color,
    this.textcolor,
    this.borderRadius = 12,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 56.h),
        backgroundColor: color ?? btnColor,
        foregroundColor: textcolor ?? Colors.white,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: textcolor ?? Colors.white,
          fontSize: 16.sp,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
