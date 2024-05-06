import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_test/constant/app_color.dart';
import 'package:flutter_application_test/constant/app_text_styles.dart';

import '../../../model/offers.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var images = {
    "Screenshot 2024-05-02 201653.png": "Screenshot 2024-05-02 201653",
    "socrat-i-lera-600x600.png": "socrat-i-lera-600x600",
    "Без названия.png": "Без названия",
  };
  List<Offer> offers = [];

  @override
  void initState() {
    super.initState();

    offers = parseOffers(jsonData);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: offers.length,
      itemBuilder: (context, index) {
        final offer = offers[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 0, right: 30),
              width: 132,
              height: 133,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/" + images.keys.elementAt(index)),
                ),
              ),
            ),
            Text(
              offer.title, style: AppTextStyles.title3,
              // textAlign: TextAlign.left,
            ),
            Text('${offer.town} ', style: AppTextStyles.title4),
            Row(
              children: [
                ImageIcon(
                  AssetImage(
                    'assets/plane.png',
                  ),
                  color: AppColors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('ОТ ${offer.price.value} \$', style: AppTextStyles.title4),
              ],
            )
          ],
        );
      },
    );
  }
}
