import 'package:flutter/material.dart';
import 'package:flutter_application_test/constant/app_color.dart';

import '../widgets/search/container_search.dart';
import '../widgets/icon_search.dart';
import '../widgets/search/search_button.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.grey1,
      ),
      backgroundColor: AppColors.grey1,
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        width: double.infinity,
        height: double.infinity,
        child: const SingleChildScrollView(
          child: Column(
            children: [
              SearchButton(
                  Texthint1: 'Минск',
                  Texthint2: 'Куда- Турция',
                  color: AppColors.grey5,
                  image1: AssetImage(
                    'assets/plane.png',
                  ),
                  assetName2: AssetImage(
                    'assets/search.png',
                  ),
                  assetcansel: AssetImage(
                    'assets/close.png',
                  )),
              SizedBox(
                height: 10,
              ),
              IconSearch(),
              SizedBox(
                height: 10,
              ),
              ContainerSearch(),
            ],
          ),
        ),
      ),
    );
  }
}
