import 'package:flutter/material.dart';

import '../../../constant/app_color.dart';
import '../../../constant/app_text_styles.dart';
import '../../screen/chose_country_page.dart';

class ContainerSearch extends StatelessWidget {
  const ContainerSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 216,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.grey4,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/Ortakoy-Mosque-and-the-Bosphorus-Bridge-at-sunrise.Photographer_-Givaga_iStockphoto-.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Стамбул",
                        style: AppTextStyles.text1,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Популярное направление",
                        style: AppTextStyles.title4
                            .copyWith(color: AppColors.grey6),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              width: 320,
              height: 1,
              decoration: const BoxDecoration(color: AppColors.grey6),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChoseCountryPage()));
              },
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/сочи.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Сочи",
                        style: AppTextStyles.text1,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Популярное направление",
                        style: AppTextStyles.title4
                            .copyWith(color: AppColors.grey6),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              width: 320,
              height: 1,
              decoration: const BoxDecoration(color: AppColors.grey6),
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/phuket.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Пхукет",
                        style: AppTextStyles.text1,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Популярное направление",
                        style: AppTextStyles.title4
                            .copyWith(color: AppColors.grey6),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
