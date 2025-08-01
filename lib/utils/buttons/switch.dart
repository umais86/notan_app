import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwitchButton extends StatefulWidget {
  final Function(bool)? onToggle;
  final Function(bool isOn, String selectedScent)? onSelectionChanged;
  const SwitchButton({super.key, this.onToggle, this.onSelectionChanged});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  late bool isOn;
  late String selectedScent;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40.w,
      height: 25.h,
      child: Transform.scale(
        scale: 0.7,
        child: Switch(
          value: isOn,
          onChanged: (value) {
            setState(() {
              isOn = value;
            });

            widget.onToggle?.call(value);

            WidgetsBinding.instance.addPostFrameCallback((_) {
              widget.onSelectionChanged?.call(isOn, selectedScent);
            });
          },
          activeColor: Colors.white,
          activeTrackColor: Colors.green,
          inactiveTrackColor: Colors.grey.shade300,
          inactiveThumbColor: Colors.white,
        ),
      ),
    );
  }
}
