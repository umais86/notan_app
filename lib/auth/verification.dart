import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/theme/colors.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Verification',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, size: 22.sp),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.message_rounded, size: 70, color: txtGcolor),
            SizedBox(height: 30),
            Text(
              'Verification Code',
              style: TextStyle(
                fontFamily: 'Outfit',
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'We have to sent the code verfication to ',
              style: TextStyle(
                color: subColor,
                fontSize: 13.sp,
                fontWeight: FontWeight.w300,
                fontFamily: 'Outfit',
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              'Umais@mail.com',
              style: TextStyle(
                fontSize: 13.sp,
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
