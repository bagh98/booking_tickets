import 'package:flutter/material.dart';
import 'package:flutter_application_test/constant/app_color.dart';
import 'package:flutter_application_test/constant/app_text_styles.dart';
import 'package:flutter_application_test/pages/widgets/toggle_button.dart';

import '../widgets/button_chosepage.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60),
                alignment: Alignment.centerLeft,
                width: 328,
                height: 40,
                color: AppColors.grey4,
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: ImageIcon(AssetImage('assets/close.png'))),
              ),
              Container(
                padding: const EdgeInsets.only(left: 30),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Пересадки",
                  style: AppTextStyles.title1,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                width: 328,
                height: 141,
                color: AppColors.grey4,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Без пересадок",
                      style: AppTextStyles.text1,
                    ),
                    ToggleButton(),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                width: 328,
                height: 51,
                color: AppColors.grey4,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Толька с Багажом",
                      style: AppTextStyles.text1,
                    ),
                    ToggleButton(),
                  ],
                ),
              ),
              Expanded(
                child: Container(),
              ),
              ButtonChosePage(
                data: "Готово",
                color: AppColors.darkgreen,
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
