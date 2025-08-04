import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20.r,
          backgroundImage: AssetImage('assets/images/logo.png'),
        ),
        SizedBox(width: 5.w),
        Column(
          children: [
            Text(
              'Hi, Johnathan',
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'Outfit',
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Let's work casually",
              style: TextStyle(
                fontFamily: 'Outfit',
                fontSize: 10.sp,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          backgroundColor: Colors.black12,
          child: Icon(Icons.notifications_none, size: 28, color: Colors.white),
        ),
      ],
    );
  }
}
