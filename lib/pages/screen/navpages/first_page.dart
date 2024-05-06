// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_test/constant/app_color.dart';
import 'package:flutter_application_test/constant/app_text_styles.dart';
import 'package:flutter_application_test/pages/widgets/app_text.dart';

import '../../widgets/home_page/List_view_home.dart';
import '../../widgets/home_page/button_homepage.dart';
import '../../widgets/home_page/inkwell_homepage.dart';

class FirstPage extends StatefulWidget {
  final List<dynamic> dataList;
  const FirstPage({super.key, required this.dataList});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // Define _selectedIndex here

  // Define method to build navigation bar items

  // Define method to handle navigation bar item tap

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              children: [
                AppText(
                  textAlign: TextAlign.center,
                  text: "Поиск дешевых \n авиабилетов",
                  style: AppTextStyles.title1,
                ),
                const SizedBox(
                  height: 20,
                ),
                InkwellHomePage(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: AppText(
                    text: "Музыкально отлететь",
                    style: AppTextStyles.title1,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: double.maxFinite,
                  height: 213,
                  child: MyWidget(),
                ),
                SizedBox(
                  height: 20,
                ),
                ButtonHomePage(),
                SizedBox(
                  height: 20,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    child: AppText(
                      text: "Ваш первый раз",
                      style: AppTextStyles.title1,
                    )),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: double.maxFinite,
                  height: 213,
                  child: MyWidget(),
                ),
              ],
            ),
          ),
        ));
  }
}
