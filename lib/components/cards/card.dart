import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/theme/colors.dart';

class ProjectCard extends StatefulWidget {
  final String imagePath;
  final String category;
  final String title;
  final bool isFavorite;
  final VoidCallback? onFavoriteTap;
  final Color? color;
  final String text;

  const ProjectCard({
    super.key,
    required this.imagePath,
    required this.category,
    required this.title,
    this.isFavorite = false,
    this.onFavoriteTap,
    this.color,
    required this.text,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late double progressValue;

  @override
  void initState() {
    super.initState();
    progressValue = _calculateProgressValue(widget.text);

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _animation = Tween<double>(
      begin: 0,
      end: progressValue,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double _calculateProgressValue(String text) {
    try {
      final clean = text.replaceAll('%', '');
      final percent = double.parse(clean);
      return percent.clamp(0, 100) / 100;
    } catch (e) {
      return 0.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImageWithOverlay(),
            SizedBox(height: 6.h),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'Outfit',
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 6.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Progress',
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 14.sp,
                    color: subColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  widget.text,
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 14.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.h),
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(4.r),
                  value: _animation.value,
                  backgroundColor: Colors.grey.shade300,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    widget.color ?? txtGcolor,
                  ),
                  minHeight: 5.h,
                );
              },
            ),
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }

  Widget _buildImageWithOverlay() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: Image.asset(
            widget.imagePath,
            height: 120.h,
            width: 176.w,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 85.h,
          left: 10.w,
          right: 10.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildCategoryLabel(), _buildFavoriteButton()],
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryLabel() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 4),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.6),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Text(
            widget.category,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFavoriteButton() {
    return GestureDetector(
      onTap: widget.onFavoriteTap,
      child: Icon(
        widget.isFavorite ? Icons.favorite : Icons.favorite_border,
        color: widget.isFavorite ? Colors.red : white,
        size: 25.sp,
      ),
    );
  }
}
