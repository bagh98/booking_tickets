import 'package:flutter/material.dart';
import 'package:flutter_application_test/pages/screen/navpages/notiication_page.dart';

import '../../../constant/app_color.dart';
import '../../screen/navpages/address_page.dart';
import '../../screen/navpages/first_page.dart';
import '../../screen/navpages/hotel_page.dart';
import '../../screen/navpages/profile_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
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
    return BottomNavigationBar(
      // _option.elementAt(_currentIndex);
      backgroundColor: AppColors.black,
      items: const [
        BottomNavigationBarItem(
          // Navigator.push(
          // context, MaterialPageRoute(builder: (context) => SearchPage()));

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
    );
  }
}
