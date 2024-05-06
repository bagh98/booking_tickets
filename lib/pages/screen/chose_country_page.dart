import 'package:flutter/material.dart';
import 'package:flutter_application_test/constant/app_color.dart';
import 'package:flutter_application_test/constant/app_text_styles.dart';
import 'package:flutter_application_test/pages/screen/filter-page.dart';
import 'package:flutter_application_test/pages/screen/ticket_page.dart';
import 'package:flutter_application_test/pages/widgets/navbar/nav_bar.dart';

import '../widgets/button_chosepage.dart';
import '../widgets/filter_container.dart';
import '../widgets/listview_chose.dart';
import '../widgets/search/search_button.dart';
import '../widgets/toggle_button.dart';

class ChoseCountryPage extends StatefulWidget {
  const ChoseCountryPage({super.key});

  @override
  State<ChoseCountryPage> createState() => _ChoseCountryPageState();
}

class _ChoseCountryPageState extends State<ChoseCountryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 90),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                const SearchButton(
                  Texthint1: 'Минск',
                  Texthint2: 'Сочи',
                  color: AppColors.white,
                  assetarrow2: AssetImage('assets/arrow.png'),
                  assetcansel: AssetImage('assets/close.png'),
                  assetcanghe: AssetImage('assets/change.png'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 328,
                  height: 40,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const FilterContainer(
                          width: 89,
                          height: 33,
                          icon: Icon(
                            Icons.add,
                            color: AppColors.white,
                          ),
                          text: "Обратно",
                          text2: '',
                        ),
                        const FilterContainer(
                          width: 89,
                          height: 33,
                          icon: Text('  '),
                          text: "24 Фев,",
                          text2: ' сб',
                          style: AppTextStyles.tabtext,
                        ),
                        const FilterContainer(
                          width: 89,
                          height: 33,
                          icon: ImageIcon(
                            AssetImage('assets/profile.png'),
                            color: AppColors.grey6,
                          ),
                          text: "1,Эконом",
                          text2: '',
                        ),
                        InkWell(
                          splashColor: AppColors.black,
                          hoverColor: AppColors.black,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FilterPage()));
                          },
                          child: const Center(
                            child: FilterContainer(
                              width: 89,
                              height: 33,
                              icon: ImageIcon(
                                AssetImage('assets/filter.png'),
                                color: AppColors.white,
                              ),
                              text: "Фильтры",
                              text2: '',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ListViewChose(),
                const SizedBox(
                  height: 20,
                ),
                ButtonChosePage(
                  data: 'Посмотреть ве билеты',
                  color: AppColors.darkblue,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TicketPage()));
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 328,
                  height: 51,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.grey4),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.notifications,
                          color: AppColors.blue,
                        ),
                        Text(
                          "Подписка на цену",
                          style: AppTextStyles.title3,
                        ),
                        Spacer(),
                        ToggleButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
