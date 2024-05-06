import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant/app_color.dart';
import '../../constant/app_text_styles.dart';

class IconSearch extends StatelessWidget {
  const IconSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.darkgreen),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icon2.svg',
                  ),
                ),
              ),
              Text(
                'Сложный \n маршрут',
                style: AppTextStyles.text1,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.blue),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icon4.svg',
                  ),
                ),
              ),
              Text(
                'Куда угодно \n',
                style: AppTextStyles.text1,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.darkblue),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icon1.svg',
                  ),
                ),
              ),
              Text(
                'Выходные \n',
                style: AppTextStyles.text1,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.red),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icon3.svg',
                  ),
                ),
              ),
              Text(
                'Горячие \n билеты',
                style: AppTextStyles.text1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
