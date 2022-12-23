import 'package:flutter/material.dart';
import '../../../models/food.dart';
import '../../../utils/assets.dart';
import '../../../widgets/card_item_simple.dart';
import '../../../widgets/input_search.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var foodList = [
    Food(
      itemName: "Rice",
    ),
    Food(
      itemName: "Beans",
    ),
    Food(
      itemName: "Carrot",
    ),
    Food(
      itemName: "Pasta",
    ),
    Food(
      itemName: "rice",
    ),
    Food(
      itemName: "rice",
    ),
    Food(
      itemName: "rice",
    ),
    Food(
      itemName: "rice",
    ),
    Food(
      itemName: "rice",
    ),
    Food(
      itemName: "rice",
    ),
    Food(
      itemName: "rice",
    ),
    Food(
      itemName: "rice",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const InputSearch(hint: 'Search', icon: Assets.icSeachC),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'All',
                      style: Theme.of(context).primaryTextTheme.subtitle1,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: foodList.length,
                  itemBuilder: (context, index) {
                    return CardItemSimple(
                      icon: Assets.icCalendar,
                      itemName: foodList[index].itemName,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
