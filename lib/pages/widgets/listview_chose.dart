import 'package:flutter/material.dart';

import '../../constant/app_color.dart';
import '../../constant/app_text_styles.dart';
import '../../model/ticket_offers.dart';

class ListViewChose extends StatefulWidget {
  const ListViewChose({super.key});

  @override
  State<ListViewChose> createState() => _ListViewChoseState();
}

class _ListViewChoseState extends State<ListViewChose> {
  List<Color> color = [
    AppColors.red,
    AppColors.blue,
    AppColors.white,
  ];
  List<TicketOffer> ticketOffer = [];
  @override
  void initState() {
    super.initState();
    ticketOffer = ticketsOffersFromJson(jsonData);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 320,
      decoration: BoxDecoration(
          color: AppColors.grey4, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          const Text(
            'Прямыу редьсы',
            style: AppTextStyles.title1,
          ),
          Container(
            width: 310,
            height: 250,
            child: ListView.builder(
                itemCount: ticketOffer.length,
                itemBuilder: (context, index) {
                  final tiketoffer = ticketOffer[index];

                  return Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: color[index]),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "${tiketoffer.title}",
                            style: AppTextStyles.text2,
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              // textAlign: TextAlign.justify,
                              '${tiketoffer.price.value} \$ >',
                              style: const TextStyle(color: AppColors.blue),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Row(
                          children: tiketoffer.timeRange
                              .map(
                                (time) => Text(
                                  '  ${time}',
                                  style: AppTextStyles.text2,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        width: 288,
                        height: 1,
                        decoration: const BoxDecoration(color: AppColors.grey6),
                      ),
                    ],
                  );
                }),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              ' Поаказать все',
              style: AppTextStyles.titke2.copyWith(color: AppColors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
