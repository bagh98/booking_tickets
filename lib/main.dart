import 'package:flutter/material.dart';
import 'package:flutter_application_test/pages/screen/chose_country_page.dart';
import 'package:flutter_application_test/pages/screen/filter-page.dart';
import 'package:flutter_application_test/pages/screen/navpages/address_page.dart';
import 'package:flutter_application_test/pages/screen/navpages/first_page.dart';
import 'package:flutter_application_test/pages/screen/navpages/hotel_page.dart';
import 'package:flutter_application_test/pages/screen/search_page.dart';
import 'package:flutter_application_test/pages/screen/ticket_page.dart';

import 'pages/screen/home_page.dart';
import 'pages/screen/navpages/notiication_page.dart';
import 'pages/screen/navpages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/': (context) => HomePage(),

        '/searchpage': (context) => SearchPage(),
        '/choseCountryPage': (context) => ChoseCountryPage(),
        '/filterPage': (context) => FilterPage(),
        '/ticketpage': (context) => TicketPage(),

        // nav pages
        '/firstpage': (context) => FirstPage(
              dataList: [],
            ),
        '/address': (context) => AddressPage(),
        '/profile': (context) => ProfilePage(),
        '/notificationPage': (context) => NotificationPage(),
        '/hotel': (context) => HotelPage(),
      },
    );
  }
}
