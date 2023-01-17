import 'dart:convert';
import 'dart:ffi';
import 'package:intl/intl.dart';

class Item {
  Item({
    required this.id,
    required this.itemName,
    required this.kcal,
    this.quantity,
    this.fat,
    this.protein,
    this.water,
    this.carbon,
  });

  final String id;
  final String itemName;
  final Int kcal;
  final Int? quantity;
  final Int? fat;
  final Int? protein;
  final Int? water;
  final Int? carbon;

  factory Item.fromMap(Map<String, dynamic> json) => Item(
        id: json["_id"],
        itemName: json["itemName"],
        kcal: json["kcal"],
        quantity: json["quantity"],
        fat: json["fat"],
        protein: json["protein"],
        water: json["water"],
        carbon: json["carbon"],
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "itemName": itemName,
        "kcal": kcal,
        "quantity": quantity,
        "fat": fat,
        "protein": protein,
        "water": water,
        "carbon": carbon
      };
}

List<Item> priceListFromJson(String str) =>
    List<Item>.from(json.decode(str).map((x) => Item.fromMap(x)));
