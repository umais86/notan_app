import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaskCard extends StatelessWidget {
  final String priority;
  final String title;
  final String subtitle;
  final String timeRange;
  final String status;
  final Color statusColor;
  final List<String> avatars; // image asset paths

  const TaskCard({
    super.key,
    required this.priority,
    required this.title,
    required this.subtitle,
    required this.timeRange,
    required this.status,
    required this.statusColor,
    required this.avatars,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 8.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.r,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Priority label
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              priority,
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 12,
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
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
              // Overlapping avatars
              SizedBox(
                width: (avatars.length * 20) + 20, // overlap space
                height: 40.h,
                child: Stack(
                  children: List.generate(avatars.length, (index) {
                    return Positioned(
                      left: index * 20.0, // overlap offset
                      child: CircleAvatar(
                        radius: 20.r,
                        backgroundImage: AssetImage(avatars[index]),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          // Time + status
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.access_time, size: 16.r, color: Colors.grey),

                  SizedBox(width: 4.w),
                  Text(
                    timeRange,
                    style: TextStyle(color: Colors.grey.shade600),
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
