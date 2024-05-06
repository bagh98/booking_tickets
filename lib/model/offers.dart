final Map<String, dynamic> jsonData = {
  "offers": [
    {
      "id": 1,
      "title": "Die Antwoord",
      "town": "Будапешт",
      "price": {"value": 5000}
    },
    {
      "id": 2,
      "title": "Socrat&Lera",
      "town": "Санкт-Петербург",
      "price": {"value": 1999}
    },
    {
      "id": 3,
      "title": "Лампабикт",
      "town": "Москва",
      "price": {"value": 2390}
    }
  ]
};

class Offer {
  final int id;
  final String title;
  final String town;
  final Price price;

  Offer({
    required this.id,
    required this.title,
    required this.town,
    required this.price,
  });

  factory Offer.fromJson(Map<String, dynamic> json) {
    return Offer(
      id: json['id'] as int,
      title: json['title'] as String,
      town: json['town'] as String,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
    );
  }
}

class Price {
  final int value;

  Price({required this.value});

  factory Price.fromJson(Map<String, dynamic> json) {
    return Price(value: json['value'] as int);
  }
}

// Function to parse the JSON data (assuming it's already fetched)
List<Offer> parseOffers(Map<String, dynamic> jsonData) {
  final List<Offer> offers = [];

  if (jsonData.containsKey('offers')) {
    final offerList = jsonData['offers'] as List<dynamic>;
    for (var offerJson in offerList) {
      offers.add(Offer.fromJson(offerJson as Map<String, dynamic>));
    }
  }

  return offers;
}
