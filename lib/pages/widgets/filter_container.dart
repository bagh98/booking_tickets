import 'package:flutter/material.dart';

import '../../constant/app_color.dart';
import '../../constant/app_text_styles.dart';

class FilterContainer extends StatelessWidget {
  final double? width;
  final double? height;
  // ignore: non_constant_identifier_names
  final Widget icon;
  final String text;
  final String text2;
  final TextStyle? style;
  const FilterContainer(
      {super.key,
      this.width,
      this.height,
      required this.text,
      required this.text2,
      this.style,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: AppColors.grey4, borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: [
          icon,
          Text(
            text,
            style: AppTextStyles.title4,
          ),
          Text(
            text2,
            style: style,
          )
        ],
      ),
    );
  }
}
