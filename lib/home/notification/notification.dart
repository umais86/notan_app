import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/home/notification/notify_tile.dart';
import 'package:notoan_app/theme/colors.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 22.r,
                      color: Colors.black,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Text(
                    "Notification",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.filter_list),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildFilterChip("All", true),
                    _buildFilterChip("Following", true),
                    _buildFilterChip("Assign by me", false),
                    _buildFilterChip("@Mentioned", false),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "Unread (2)",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 12.h),
              NotificationTile(
                avatarPath: 'assets/images/logo.png',
                name: "Gran Lognal",
                message: "assigned you Project Brief",
                time: "Today at 08:00 AM",
                showMenu: true,
              ),
              NotificationTile(
                avatarPath: 'assets/images/logo.png',
                name: "Michael Hwang",
                message: "mentioned you in a comment on Redesign Landingpage",
                time: "Today at 09:00 AM",
                imagePreview: 'assets/images/work.png',
              ),
              SizedBox(height: 20.h),
              Text(
                "Yesterday",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 12.h),
              NotificationTile(
                avatarPath: 'assets/images/logo.png',
                name: "John Hopkins",
                message: "update permission for Jerom Project Task",
                time: "Today at 08:00 AM",
                permissionStatus: "Can view",
                permissionColor: txtGcolor,
                showMenu: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterChip(String text, bool selected) {
    return Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: selected ? txtGcolor : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: selected ? Colors.white : Colors.black54,
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
