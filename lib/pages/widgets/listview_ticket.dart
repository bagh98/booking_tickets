import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constant/app_color.dart';
import '../../constant/app_text_styles.dart';
import '../../model/ticket.dart';

class ListViewTicket extends StatefulWidget {
  const ListViewTicket({super.key});

  @override
  State<ListViewTicket> createState() => _ListViewTicketState();
}

class _ListViewTicketState extends State<ListViewTicket> {
  List<FlightTicket> flights = [];

  _ListViewTicketState();
  void initState() {
    super.initState();
    flights = flightFromJson(jsonData);
  }

  String formatPrice(int value) {
    return NumberFormat.currency(locale: 'ru-RU', symbol: '₽').format(value);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: flights.length,
        itemBuilder: (context, index) {
          final flight = flights[index];
          return Stack(
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  width: 328,
                  height: 117,
                  decoration: BoxDecoration(
                    color: AppColors.grey3,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        (formatPrice(flight.price.value)),
                        style: AppTextStyles.text1,
                      ),
                      const SizedBox(height: 14),
                      Row(
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: AppColors.red),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                      " ${DateFormat('HH:mm').format(flight.departure.date)}",
                                      style: AppTextStyles.text2),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                      " ${DateFormat('HH:mm').format(flight.arrival.date)}",
                                      style: AppTextStyles.text2),
                                ],
                              ),
                              Text(
                                  " ${flight.departure.airport}    ${flight.arrival.airport}",
                                  style: AppTextStyles.title4
                                      .copyWith(color: AppColors.grey6)),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            " ${flight.arrival.date.difference(flight.departure.date).inHours}h ${flight.arrival.date.difference(flight.departure.date).inMinutes % 60}m а пути",
                            style: const TextStyle(
                                fontSize: 12.0, color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                    ],
                  ),
                ),
              ),
              if (flight.badge != null)
                Positioned(
                  right: 240,
                  child: Container(
                      width: 126,
                      height: 21,
                      decoration: BoxDecoration(
                          color: AppColors.darkblue,
                          borderRadius: BorderRadius.circular(50)),
                      child: Column(
                        children: [
                          if (flight.badge != null)
                            Text(flight.badge!, style: AppTextStyles.title4),
                        ],
                      )),
                ),
            ],
          );
        });
  }
}
