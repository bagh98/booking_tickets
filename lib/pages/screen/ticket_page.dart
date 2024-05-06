import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_test/constant/app_color.dart';
import 'package:flutter_application_test/constant/app_text_styles.dart';
import 'package:flutter_application_test/pages/widgets/navbar/nav_bar.dart';
import 'package:intl/intl.dart'; // for formatting price

import '../../model/ticket.dart';
import '../widgets/listview_ticket.dart';
import 'chose_country_page.dart';

// ignore: must_be_immutable
class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  List<FlightTicket> flights = [];

  _TicketPageState();
  void initState() {
    super.initState();
    flights = flightFromJson(jsonData);
  }

  String formatPrice(int value) {
    return NumberFormat.currency(locale: 'ru-RU', symbol: '₽').format(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    width: 328,
                    height: 56,
                    decoration: const BoxDecoration(color: AppColors.grey3),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ChoseCountryPage()));
                            },
                            icon: const Icon(Icons.arrow_back_outlined)),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Москва-Сочи",
                              style: AppTextStyles.titke2,
                            ),
                            Text(
                              "23 Февраля,  1 пассажир",
                              style: AppTextStyles.title4
                                  .copyWith(color: AppColors.grey5),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 400, height: 650, child: const ListViewTicket()),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 90,
              child: Container(
                padding: EdgeInsets.all(8),
                width: 205,
                height: 37,
                decoration: BoxDecoration(
                    color: AppColors.darkblue,
                    borderRadius: BorderRadius.circular(50)),
                child: const Row(
                  children: [
                    ImageIcon(
                      AssetImage('assets/filter.png'),
                      color: AppColors.white,
                    ),
                    Text(
                      'Фильтр',
                      style: AppTextStyles.title4,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ImageIcon(
                      AssetImage('assets/chedule.png'),
                      color: AppColors.white,
                    ),
                    Text(
                      'Грайик цен',
                      style: AppTextStyles.title4,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
