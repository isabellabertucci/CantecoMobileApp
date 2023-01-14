import 'dart:convert';

class PriceRequest {
  PriceRequest({
    required this.userType,
    required this.priceWIva,
    required this.priceWoIva,
  });

  final String userType;
  final String priceWIva;
  final String priceWoIva;

  factory PriceRequest.fromMap(Map<String, dynamic> json) => PriceRequest(
        userType: json["userType"],
        priceWIva: json["priceWIva"],
        priceWoIva: json["priceWoIva"],
      );

  Map<String, dynamic> toMap() => {
        "userType": userType,
        "priceWIva": priceWIva,
        "priceWoIva": priceWoIva,
      };

  String toJson() => json.encode(toMap());
}
