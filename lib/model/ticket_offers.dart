Map<String, dynamic> jsonData = {
  "tickets_offers": [
    {
      "id": 1,
      "title": "Уральские авиалинии",
      "time_range": [
        "07:00",
        "09:10",
        "10:00",
        "11:30",
        "14:15",
        "19:10...",
      ],
      "price": {"value": 3999}
    },
    {
      "id": 10,
      "title": "Победа",
      "time_range": ["09:10  ", "21:00 "],
      "price": {"value": 4999}
    },
    {
      "id": 30,
      "title": "NordStar",
      "time_range": ["07:00"],
      "price": {"value": 2390}
    }
  ]
};

class TicketOffer {
  final int id;
  final String title;
  final List<String> timeRange;
  final Price price;

  TicketOffer(
      {required this.id,
      required this.title,
      required this.timeRange,
      required this.price});

  factory TicketOffer.fromJson(Map<String, dynamic> json) {
    return TicketOffer(
      id: json['id'],
      title: json['title'],
      timeRange: List<String>.from(json['time_range']),
      price: Price.fromJson(json['price']),
    );
  }
}

class Price {
  final int value;

  Price({required this.value});

  factory Price.fromJson(Map<String, dynamic> json) {
    return Price(
      value: json['value'],
    );
  }
}

List<TicketOffer> ticketsOffersFromJson(Map<String, dynamic> json) {
  List<TicketOffer> ticketOffers = [];
  if (json['tickets_offers'] != null) {
    json['tickets_offers'].forEach((offer) {
      ticketOffers.add(TicketOffer.fromJson(offer));
    });
  }
  return ticketOffers;
}


  

