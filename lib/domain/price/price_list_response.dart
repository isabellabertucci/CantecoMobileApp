import 'dart:convert';

class Price {
  Price(
      {required this.id,
      required this.userType,
      required this.priceWIva,
      required this.priceWoIva});

  final String id;
  final String userType;
  final String priceWIva;
  final String priceWoIva;

  factory Price.fromMap(Map<String, dynamic> json) => Price(
      id: json["_id"],
      userType: json["userType"],
      priceWIva: json["priceWIva"],
      priceWoIva: json["priceWoIva"]);

  Map<String, dynamic> toMap() => {
        "_id": id,
        "userType": userType,
        "priceWIva": priceWIva,
        "priceWoIva": priceWoIva
      };
}

List<Price> priceListFromJson(String str) =>
    List<Price>.from(json.decode(str).map((x) => Price.fromMap(x)));
