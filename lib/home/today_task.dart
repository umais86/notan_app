import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/components/cards/task_card.dart';
import 'package:notoan_app/home/appbar/custom_app_bar.dart';
import 'package:notoan_app/theme/colors.dart';

class TodayTask extends StatelessWidget {
  const TodayTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 160.h,
              width: double.infinity,
              decoration: BoxDecoration(color: appbarColor),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                child: CustomAppBar(hint: 'Resign of'),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              child: Column(
                children: [
                  Text(
                    'Task Found (3)',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  TaskCard(
                    priority: 'Low',
                    title: 'Pixel Perfect Design',
                    subtitle: 'Design Landing Page',
                    timeRange: '10.00 AM -10.30 AM',
                    status: 'Completed',
                    statusColor: txtGcolor,
                    avatars: [
                      'assets/images/work.png',
                      'assets/images/onboard.png',
                      'assets/images/logo.png',
                    ],
                    priorityColor: Colors.blue,
                    priorityColorbg: Colors.blue.shade50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
