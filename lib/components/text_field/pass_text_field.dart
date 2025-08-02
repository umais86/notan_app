import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:notoan_app/theme/colors.dart';

class PassTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;

  const PassTextField({
    super.key,
    required this.controller,
    required this.hint,
  });

  @override
  State<PassTextField> createState() => _PassTextFieldState();
}

class _PassTextFieldState extends State<PassTextField> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _obscureText,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: TextStyle(
          color: subColor,
          fontSize: 14.sp,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w300,
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.all(12.w),
          child: Icon(Icons.lock_outline, size: 24, color: txtGcolor),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            color: Colors.grey,
          ),
          onPressed: _toggleVisibility,
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: txtGcolor, width: 1.5),
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
    );
  }
}
