import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_test/constant/app_color.dart';
import 'package:flutter_application_test/pages/screen/navpages/first_page.dart';

import 'navpages/address_page.dart';
import 'navpages/hotel_page.dart';
import 'navpages/notiication_page.dart';
import 'navpages/profile_page.dart';

class HomePage extends StatefulWidget {
  // final List<dynamic> dataList;
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  onItemSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _option = [
    // HomePage(),
    FirstPage(dataList: []),
    const HotelPage(),
    const AddressPage(),
    const NotificationPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.black,
      ),
      backgroundColor: AppColors.black,
      body: Center(child: _option.elementAt(_currentIndex)),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            AppColors.black, // Change this to your desired background color
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(
              'assets/Vector.png',
            )),
            label: "Авиабилеты",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(
                'assets/hotel.png',
              )),
              label: 'Отели'),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(
              'assets/address.png',
            )),
            label: "Короче",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(
              'assets/rang.png',
            )),
            label: "Подпискт",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(
              'assets/profile.png',
            )),
            label: "Профиль",
          ),
        ],
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.grey5,

        onTap: onItemSelected,
      ),
    );
  }
}
