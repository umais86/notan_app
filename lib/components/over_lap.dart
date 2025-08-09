import 'package:flutter/material.dart';

class OverlappingAvatar extends StatelessWidget {
  final List<String> avatars;

  const OverlappingAvatar({super.key, required this.avatars});

  @override
  Widget build(BuildContext context) {
    final double avatarRadius = 10;
    final double overlap = 10;
    final double totalWidth = avatars.isEmpty
        ? 0
        : avatarRadius * 2 + (avatars.length - 1) * overlap;

    return SizedBox(
      width: totalWidth,
      height: avatarRadius * 2,
      child: Stack(
        children: avatars.asMap().entries.map((entry) {
          int index = entry.key;
          String imagePath = entry.value;

          return Positioned(
            left: index * overlap,
            child: CircleAvatar(
              radius: avatarRadius,
              backgroundImage: AssetImage(imagePath),
            ),
          );
        }).toList(),
      ),
    );
  }
}
