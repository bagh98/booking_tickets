import 'package:flutter/material.dart';
import 'package:flutter_application_test/constant/app_color.dart';
import 'package:flutter_application_test/constant/app_text_styles.dart';

class ButtonHomePage extends StatelessWidget {
  const ButtonHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {},
      child: Container(
        width: 328,
        height: 42,
        decoration: BoxDecoration(
            color: AppColors.grey4, borderRadius: BorderRadius.circular(15)),
        child: const Center(
          child: Text(
            'Показать все миста',
            style: AppTextStyles.text2,
          ),
        ),
      ),
    );
  }
}
