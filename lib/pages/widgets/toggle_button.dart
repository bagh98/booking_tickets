import 'package:flutter/material.dart';

import '../../constant/app_color.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: AppColors.blue,
      value: _isOn,
      onChanged: (value) {
        setState(() {
          _isOn = value;
        });
      },
    );
  }
}
