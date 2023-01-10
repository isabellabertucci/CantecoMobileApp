import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardMealsMenu extends StatelessWidget {
  final String assetName;
  final String text;
  final String itemKcal;
  final Function onTap;

  const CardMealsMenu(
      {super.key,
      required this.assetName,
      required this.text,
      required this.itemKcal,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    var radius = BorderRadius.circular(10.0);

    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: radius,
          ),
          elevation: 2,
          child: InkWell(
            onTap: () => onTap(),
            borderRadius: radius,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 125,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    assetName,
                    width: 110,
                    height: 110,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  text,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: Theme.of(context).primaryTextTheme.subtitle1,
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  itemKcal,
                  style: Theme.of(context).primaryTextTheme.caption,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
