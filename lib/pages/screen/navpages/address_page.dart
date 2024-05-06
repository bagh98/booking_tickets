import 'package:flutter/material.dart';
import 'package:flutter_application_test/constant/app_text_styles.dart';

import '../../../constant/app_color.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Container(
        child: Text(
          'data',
          style: AppTextStyles.text1,
        ),
      ),
    );
  }
}
