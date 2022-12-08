import 'package:canteco_app/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/card_item_simple.dart';
import '../widgets/customItem_impact.dart';
import '../widgets/input_search.dart';

class SearchPageD extends StatefulWidget {
  const SearchPageD({super.key});

  @override
  State<SearchPageD> createState() => _SearchPageDstate();
}

class _SearchPageDstate extends State<SearchPageD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputSearch(hint: 'Search', icon: Assets.icSeachC),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'All',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
                Container(
                  height: 550,
                  child: ListView(
                    children: [
                      ItemStatsSimple(itemName: 'Pasta', quantity: '1kg'),
                      SizedBox(height: 20),
                      ItemStatsSimple(itemName: 'Beans', quantity: '1kg'),
                      SizedBox(height: 20),
                      ItemStatsSimple(itemName: 'Spinach', quantity: '1kg'),
                      SizedBox(height: 20),
                      ItemStatsSimple(itemName: 'Rice', quantity: '1kg'),
                      SizedBox(height: 20),
                      ItemStatsSimple(itemName: 'Cow Meat', quantity: '1kg'),
                      SizedBox(height: 20),
                      ItemStatsSimple(itemName: 'Carrot', quantity: '1kg'),
                      SizedBox(height: 20),
                      ItemStatsSimple(itemName: 'Egg', quantity: '1kg'),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
