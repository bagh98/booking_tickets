import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constant/app_color.dart';
import '../../../constant/app_text_styles.dart';

class SearchButton extends StatelessWidget {
  final String Texthint1;
  final String Texthint2;
  final ImageProvider<Object>? image1;
  final ImageProvider<Object>? assetName2;
  final ImageProvider<Object>? assetarrow2;
  final ImageProvider<Object>? assetcansel;
  final ImageProvider<Object>? assetcanghe;

  final Color? color;
  const SearchButton(
      {super.key,
      required this.Texthint1,
      required this.Texthint2,
      this.color,
      this.assetName2,
      this.assetarrow2,
      this.assetcansel,
      this.assetcanghe,
      this.image1});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 100,
      decoration: BoxDecoration(
          color: AppColors.grey3, borderRadius: BorderRadius.circular(15)),

      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 5),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      icon: ImageIcon(
                        image1,
                        color: AppColors.grey5,
                      ),
                      hintText: Texthint1,
                      hintStyle: AppTextStyles.title4),
                ),
                Container(
                  width: 280,
                  height: 1,
                  decoration: const BoxDecoration(color: AppColors.grey6),
                ),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    icon: ImageIcon(
                      assetName2,
                      color: AppColors.grey5,
                    ),
                    hintText: Texthint2,
                    hintStyle: AppTextStyles.title4.copyWith(color: color),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            child: ImageIcon(
              assetarrow2,
              color: AppColors.white,
            ),
          ),
          Positioned(
            bottom: 15,
            right: 20,
            child: InkWell(
              onTap: () {
                debugPrint('222');
              },
              child: ImageIcon(
                assetcansel,
                color: AppColors.white,
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 20,
            child: ImageIcon(
              assetcanghe,
              color: AppColors.white,
            ),
          ),
        ],
      ),

      // child: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       const SizedBox(
      //         width: 10,
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           const Row(
      //             children: [
      //               Icon(Icons.airplanemode_active_outlined),
      //               SizedBox(
      //                 width: 10,
      //               ),
      //               Text(
      //                 'Минск',
      //                 style: AppTextStyles.text1,
      //               ),
      //             ],
      //           ),
      //           Container(
      //             width: 290,
      //             height: 1,
      //             decoration: const BoxDecoration(color: AppColors.grey6),
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               const Icon(
      //                 Icons.search_outlined,
      //                 size: 30,
      //               ),
      //               const SizedBox(
      //                 width: 10,
      //               ),
      //               Text(
      //                 'Куда - Турция',
      //                 style:
      //                     AppTextStyles.title4.copyWith(color: AppColors.grey6),
      //               ),
      //               const SizedBox(
      //                 width: 140,
      //               ),
      //               const Icon(Icons.cancel_outlined)
      //             ],
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
