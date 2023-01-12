import 'package:flutter/material.dart';
import '../../../models/food.dart';
import '../../../utils/assets.dart';
import '../../../utils/routes.dart';
import '../../../utils/theme.dart';
import '../../../widgets/card_item_simple.dart';
import '../../../widgets/input_search.dart';
import 'package:sticky_headers/sticky_headers.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _textController = TextEditingController();
  String value = '';
  List<Food> searchFoodList = [];

  List<Food> foodList = [
    Food(
        itemName: "Tuna",
        img: Assets.imgPeixe,
        kcal: 1320,
        protein: 280,
        fat: 12,
        carbs: 0,
        waterImpact: 1300,
        carbonimpact: 9.4),
    Food(
        itemName: "Black Beans",
        img: Assets.imgFeijao,
        kcal: 850,
        protein: 210,
        fat: 3,
        carbs: 180,
        waterImpact: 1650,
        carbonimpact: 2),
    Food(
        itemName: 'Carrot',
        img: Assets.imgCenoura,
        kcal: 410,
        protein: 9,
        fat: 0,
        carbs: 100,
        waterImpact: 195,
        carbonimpact: 0.1),
    Food(
        itemName: "Pasta",
        img: Assets.imgMassa,
        kcal: 1310,
        protein: 50,
        fat: 7,
        carbs: 250,
        waterImpact: 1509,
        carbonimpact: 1),
    Food(
        itemName: "Rice",
        img: Assets.imgArroz,
        kcal: 1300,
        protein: 27,
        fat: 60,
        carbs: 280,
        waterImpact: 200,
        carbonimpact: 25),
    Food(
        itemName: "Beef",
        img: Assets.imgVaca,
        kcal: 2500,
        protein: 260,
        fat: 112,
        carbs: 0,
        waterImpact: 12500,
        carbonimpact: 32),
    Food(
        itemName: "Chicken",
        img: Assets.imgFrango,
        kcal: 2390,
        protein: 270,
        fat: 36,
        carbs: 0,
        waterImpact: 1100,
        carbonimpact: 3.4),
    Food(
        itemName: "Lentils",
        img: Assets.imgFeijao,
        kcal: 1160,
        protein: 90,
        fat: 1,
        carbs: 56,
        waterImpact: 2445,
        carbonimpact: 3),
    Food(
        itemName: "Peas",
        img: Assets.imgFeijao,
        kcal: 810,
        protein: 80,
        fat: 0,
        carbs: 140,
        waterImpact: 200,
        carbonimpact: 25),
    Food(
        itemName: "Rabbit",
        img: Assets.imgFrango,
        kcal: 1730,
        protein: 160,
        fat: 60,
        carbs: 0,
        waterImpact: 200,
        carbonimpact: 25),
    Food(
        itemName: "Pork",
        img: Assets.imgVaca,
        kcal: 2420,
        protein: 270,
        fat: 130,
        carbs: 0,
        waterImpact: 200,
        carbonimpact: 25),
    Food(
        itemName: "Soya",
        img: Assets.imgFeijao,
        kcal: 3356,
        protein: 205,
        fat: 0,
        carbs: 40,
        waterImpact: 200,
        carbonimpact: 25),
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
                StickyHeader(
                    header: Container(
                      alignment: Alignment.center,
                      color: CustomTheme.white,
                      height: 75,
                      child: InputSearch(
                        hint: 'Search',
                        icon: Assets.icSeachC,
                        controller: _textController,
                        onchange: searchItems,
                      ),
                    ),
                    content: Column(
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              'All',
                              style:
                                  Theme.of(context).primaryTextTheme.subtitle1,
                            ),
                          ],
                        ),
                        // Image.asset(name)
                        const SizedBox(height: 20),
                        _listbuilder(
                            searchFoodList.isEmpty ? foodList : searchFoodList)
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /*  */
  /*  */
  /* funcoes criadas */
  /*  */

  /* builder */

  Widget _listbuilder(List<Food> foodList) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: foodList.length,
      itemBuilder: (context, index) {
        final item = foodList[index];
        return CardItemSimple(
          onTap: () => Navigator.pushNamed(
            context,
            Routes.individualItemPage,
            arguments: item,
          ),
          icon: (item.img),
          itemName: item.itemName,
        );
      },
    );
  }

/* pesquisa */

  void searchItems(String query) {
    final suggestion = foodList.where((Food food) {
      final itemTitle = food.itemName.toLowerCase();
      final input = query.toLowerCase();

      return itemTitle.contains(input);
    }).toList();

    setState(() {
      searchFoodList = suggestion;
    });
  }
}
