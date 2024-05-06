import 'package:flutter/material.dart';
import 'package:flutter_application_test/pages/screen/search_page.dart';

import '../../../constant/app_color.dart';
import '../../../constant/app_text_styles.dart';

class InkwellHomePage extends StatelessWidget {
  const InkwellHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      mouseCursor: MouseCursor.defer,
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SearchPage()));
      },
      child: Stack(
        children: [
          Container(
            height: 122,
            width: 328,
            decoration: BoxDecoration(
              color: AppColors.grey2,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Positioned(
            top: 16,
            left: 16,
            bottom: 16,
            right: 16,
            child: Container(
              width: 296,
              height: 90,
              decoration: BoxDecoration(
                  color: AppColors.grey4,
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ImageIcon(
                      AssetImage("assets/search.png"),
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Минск',
                          style: AppTextStyles.text1,
                        ),
                        Container(
                          width: 232,
                          height: 1,
                          decoration: BoxDecoration(color: AppColors.grey6),
                        ),
                        Text(
                          'Куда - Турция',
                          style: AppTextStyles.title4
                              .copyWith(color: AppColors.grey6),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
