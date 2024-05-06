import 'package:flutter/material.dart';

import '../../constant/app_text_styles.dart';

class ButtonChosePage extends StatelessWidget {
  final String data;
  final void Function()? onTap;
  final Color? color;

  ButtonChosePage({super.key, this.onTap, required this.data, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 328,
        height: 50,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            data,
            style: AppTextStyles.title1,
          ),
        ),
      ),
    );
  }
}
