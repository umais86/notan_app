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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    timeRange: '10.00 AM - 10.30 AM',
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

                  SizedBox(height: 10.h),
                  TaskCard(
                    priority: 'High',
                    title: 'Wordpress Conversion',
                    subtitle: 'Akoya Website',
                    timeRange: '11.00 AM - 1.30 PM',
                    status: 'Remaining',
                    statusColor: Colors.redAccent,
                    avatars: [
                      'assets/images/work.png',
                      'assets/images/onboard.png',
                      'assets/images/logo.png',
                    ],
                    priorityColor: Colors.red,
                    priorityColorbg: Colors.red.shade50,
                  ),
                  SizedBox(height: 10.h),
                  TaskCard(
                    priority: 'High',
                    title: 'UI/UX',
                    subtitle: 'Akoya App',
                    timeRange: '1.30 PM - 2.30 PM',
                    status: 'Remaining',
                    statusColor: Colors.redAccent,
                    avatars: [
                      'assets/images/work.png',
                      'assets/images/onboard.png',
                      'assets/images/logo.png',
                    ],
                    priorityColor: Colors.red,
                    priorityColorbg: Colors.red.shade50,
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
