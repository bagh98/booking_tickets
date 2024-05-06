Map<String, dynamic> jsonData = {
  "tickets": [
    {
      "id": 100,
      "badge": "Самый удобный",
      "price": {"value": 1999},
      "provider_name": "На сайте Купибилет",
      "company": "Якутия",
      "departure": {
        "town": "Москва",
        "date": "2024-02-23T03:15:00",
        "airport": "VKO"
      },
      "arrival": {
        "town": "Сочи",
        "date": "2024-02-23T07:10:00",
        "airport": "AER"
      },
      "has_transfer": false,
      "has_visa_transfer": false,
      "luggage": {
        "has_luggage": false,
        "price": {"value": 1082}
      },
      "hand_luggage": {"has_hand_luggage": true, "size": "55x20x40"},
      "is_returnable": false,
      "is_exchangable": true
    },
    {
      "id": 101,
      "price": {"value": 9999},
      "provider_name": "На сайте Победа",
      "company": "Победа",
      "departure": {
        "town": "Москва",
        "date": "2024-02-23T04:00:00",
        "airport": "VKO"
      },
      "arrival": {
        "town": "Сочи",
        "date": "2024-02-23T08:30:00",
        "airport": "AER"
      },
      "has_transfer": false,
      "has_visa_transfer": false,
      "luggage": {
        "has_luggage": false,
        "price": {"value": 1602}
      },
      "hand_luggage": {"has_hand_luggage": true, "size": "36x30x27"},
      "is_returnable": false,
      "is_exchangable": true
    },
    {
      "id": 102,
      "price": {"value": 8500},
      "provider_name": "На сайте Turkish Airlines",
      "company": "Турецкие авиалинии",
      "departure": {
        "town": "Москва",
        "date": "2024-02-23T15:00:00",
        "airport": "VKO"
      },
      "arrival": {
        "town": "Сочи",
        "date": "2024-02-23T18:40:00",
        "airport": "AER"
      },
      "has_transfer": false,
      "has_visa_transfer": false,
      "luggage": {"has_luggage": true},
      "hand_luggage": {"has_hand_luggage": true, "size": "55x20x40"},
      "is_returnable": false,
      "is_exchangable": false
    },
    {
      "id": 103,
      "badge": "Рекомендуемый",
      "price": {"value": 8086},
      "provider_name": "На сайте Уральские авиалинии",
      "company": "Уральские авиалинии",
      "departure": {
        "town": "Москва",
        "date": "2024-02-23T11:30:00",
        "airport": "VKO"
      },
      "arrival": {
        "town": "Сочи",
        "date": "2024-02-23T15:00:00",
        "airport": "AER"
      },
      "has_transfer": false,
      "has_visa_transfer": false,
      "luggage": {
        "has_luggage": false,
        "price": {"value": 1570}
      },
      "hand_luggage": {"has_hand_luggage": true, "size": "55x20x40"},
      "is_returnable": true,
      "is_exchangable": true
    },
    {
      "id": 104,
      "price": {"value": 11560},
      "provider_name": "На сайте Aeroflot",
      "company": "Аэрофлот",
      "departure": {
        "town": "Москва",
        "date": "2024-02-23T11:50:00",
        "airport": "VKO"
      },
      "arrival": {
        "town": "Сочи",
        "date": "2024-02-23T15:20:00",
        "airport": "AER"
      },
      "has_transfer": true,
      "has_visa_transfer": false,
      "luggage": {
        "has_luggage": false,
        "price": {"value": 999}
      },
      "hand_luggage": {"has_hand_luggage": true, "size": "55x20x40"},
      "is_returnable": false,
      "is_exchangable": true
    },
    {
      "id": 105,
      "price": {"value": 15600},
      "provider_name": "На сайте Aeroflot",
      "company": "Аэрофлот",
      "departure": {
        "town": "Москва",
        "date": "2024-02-23T13:50:00",
        "airport": "VKO"
      },
      "arrival": {
        "town": "Сочи",
        "date": "2024-02-23T17:20:00",
        "airport": "AER"
      },
      "has_transfer": true,
      "has_visa_transfer": true,
      "luggage": {
        "has_luggage": false,
        "price": {"value": 1999}
      },
      "hand_luggage": {"has_hand_luggage": true, "size": "55x20x40"},
      "is_returnable": true,
      "is_exchangable": true
    },
    {
      "id": 106,
      "price": {"value": 9500},
      "provider_name": "На сайте Aeroflot",
      "company": "Аэрофлот",
      "departure": {
        "town": "Москва",
        "date": "2024-02-23T21:00:00",
        "airport": "VKO"
      },
      "arrival": {
        "town": "Сочи",
        "date": "2024-02-24T00:20:00",
        "airport": "AER"
      },
      "has_transfer": false,
      "has_visa_transfer": false,
      "luggage": {
        "has_luggage": false,
        "price": {"value": 5999}
      },
      "hand_luggage": {"has_hand_luggage": false},
      "is_returnable": false,
      "is_exchangable": false
    }
  ]
};

List<FlightTicket> flightTickets = flightFromJson(jsonData);

class FlightTicket {
  final int id;
  final String? badge;
  final Price price;
  final String providerName;
  final String company;
  final FlightInformation departure;
  final FlightInformation arrival;
  final bool hasTransfer;
  final bool hasVisaTransfer;
  final Luggage luggage;
  final HandLuggage handLuggage;
  final bool isReturnable;
  final bool isExchangeable;

  FlightTicket({
    required this.id,
    this.badge,
    required this.price,
    required this.providerName,
    required this.company,
    required this.departure,
    required this.arrival,
    required this.hasTransfer,
    required this.hasVisaTransfer,
    required this.luggage,
    required this.handLuggage,
    required this.isReturnable,
    required this.isExchangeable,
  });

  factory FlightTicket.fromJson(Map<String, dynamic> json) {
    return FlightTicket(
      id: json['id'],
      badge: json['badge'],
      price: Price.fromJson(json['price']),
      providerName: json['provider_name'],
      company: json['company'],
      departure: FlightInformation.fromJson(json['departure']),
      arrival: FlightInformation.fromJson(json['arrival']),
      hasTransfer: json['has_transfer'],
      hasVisaTransfer: json['has_visa_transfer'],
      luggage: Luggage.fromJson(json['luggage']),
      handLuggage: HandLuggage.fromJson(json['hand_luggage']),
      isReturnable: json['is_returnable'],
      isExchangeable: json['is_exchangable'],
    );
  }
}

class FlightInformation {
  final String town;
  final DateTime date;
  final String airport;

  FlightInformation({
    required this.town,
    required this.date,
    required this.airport,
  });

  factory FlightInformation.fromJson(Map<String, dynamic> json) {
    return FlightInformation(
      town: json['town'],
      date: DateTime.parse(json['date']),
      airport: json['airport'],
    );
  }
}

class Price {
  final int value;

  Price({required this.value});

  factory Price.fromJson(Map<String, dynamic> json) {
    return Price(value: json['value']);
  }
}

class Luggage {
  final bool hasLuggage;
  final int? price;

  Luggage({required this.hasLuggage, this.price});

  factory Luggage.fromJson(Map<String, dynamic> json) {
    return Luggage(
      hasLuggage: json['has_luggage'],
      price: json['price'] != null ? json['price']['value'] : null,
    );
  }
}

class HandLuggage {
  final bool hasHandLuggage;
  final String? size;

  HandLuggage({required this.hasHandLuggage, this.size});

  factory HandLuggage.fromJson(Map<String, dynamic> json) {
    return HandLuggage(
      hasHandLuggage: json['has_hand_luggage'],
      size: json['size'],
    );
  }
}

List<FlightTicket> flightFromJson(Map<String, dynamic> json) {
  List<FlightTicket> flights = [];
  if (json['tickets'] != null) {
    json['tickets'].forEach((ticket) {
      flights.add(FlightTicket.fromJson(ticket));
    });
  }
  return flights;
}
