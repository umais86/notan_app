// nav_bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/home/home_page.dart';
import 'package:notoan_app/theme/colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    Container(
      color: Colors.white,
      child: const Center(child: Text('Your Task Page')),
    ),
    Container(
      color: Colors.white,
      child: const Center(child: Text('Calendar Page')),
    ),
    Container(
      color: Colors.white,
      child: const Center(child: Text('Workspace Page')),
    ),
  ];

  final List<String> labels = ['Home', 'Your Task', 'Calendar', 'Workspace'];
  final List<String> icons = [
    'assets/icons/home1.png',
    'assets/icons/task.png',
    'assets/icons/calendar.png',
    'assets/icons/work.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 90.h,
        decoration: const BoxDecoration(color: Colors.white),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Row(
              children: [
                Expanded(child: _buildNavItem(0)),
                Expanded(child: _buildNavItem(1)),
                Expanded(child: Container()),
                Expanded(child: _buildNavItem(2)),
                Expanded(child: _buildNavItem(3)),
              ],
            ),
            Positioned(
              bottom: 15.h,
              child: GestureDetector(
                onTap: () {
                  print('FAB tapped');
                },
                child: Container(
                  height: 60.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                    color: txtGcolor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.add, size: 32.sp, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(int index) {
    final bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icons[index],
              height: 24.h,
              width: 24.w,
              color: isSelected ? txtGcolor : const Color(0xFF5E606A),
            ),
            SizedBox(height: 4.h),
            Text(
              labels[index],
              style: TextStyle(
                color: isSelected ? txtGcolor : const Color(0xFF5E606A),
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
