import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/theme/colors.dart';

class TaskCard extends StatelessWidget {
  final String priority;
  final String title;
  final String subtitle;
  final String timeRange;
  final String status;
  final Color priorityColor;
  final Color priorityColorbg;
  final Color statusColor;
  final List<String> avatars;

  const TaskCard({
    super.key,
    required this.priority,
    required this.title,
    required this.subtitle,
    required this.timeRange,
    required this.status,
    required this.statusColor,
    required this.avatars,
    required this.priorityColor,
    required this.priorityColorbg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      margin: EdgeInsets.symmetric(vertical: 8.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Priority label
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: priorityColorbg,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Text(
              priority,
              style: TextStyle(
                fontFamily: 'Outfit',
                color: priorityColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          // Title + avatars
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 14.sp,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
              // Overlapping avatars
              SizedBox(
                width: (avatars.length * 10) + 40,
                height: 30.h,
                child: Stack(
                  children: List.generate(avatars.length, (index) {
                    return Positioned(
                      left: index * 20.0,
                      child: CircleAvatar(
                        radius: 13.r,
                        backgroundImage: AssetImage(avatars[index]),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.access_time, size: 16.r, color: subColor),

                  SizedBox(width: 4.w),
                  Text(
                    timeRange,
                    style: TextStyle(
                      color: subColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Outfit',
                    ),
                  ),
                ],
              ),
              Text(
                status,
                style: TextStyle(
                  color: statusColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
