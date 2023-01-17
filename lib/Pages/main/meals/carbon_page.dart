import 'package:canteco_app/utils/assets.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_item_impact.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CarbonPage extends StatelessWidget {
  const CarbonPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ItemStats(
            itemName: 'Pasta',
            quantity: '125gr',
            image: Assets.imgMassa,
            impact: 1,
            color: Colors.purple[300],
            measure: AppLocalizations.of(context)!.carbon,
          ),
          const SizedBox(
            height: 10,
          ),
          ItemStats(
              itemName: 'Beef',
              quantity: '100gr',
              image: Assets.imgVaca,
              impact: 32,
              color: Colors.blue,
              measure: AppLocalizations.of(context)!.carbon),
          const SizedBox(
            height: 10,
          ),
          ItemStats(
              itemName: 'Carrot',
              quantity: '20gr',
              image: Assets.imgCenoura,
              impact: 0.1,
              color: Colors.green,
              measure: AppLocalizations.of(context)!.carbon),
          const SizedBox(
            height: 10,
          ),
          ItemStats(
              itemName: 'Beans',
              quantity: '20gr',
              image: Assets.imgFeijao,
              impact: 0.1,
              color: Colors.green,
              measure: AppLocalizations.of(context)!.carbon),
          const SizedBox(
            height: 10,
          ),
          ItemStats(
              itemName: 'Carrot',
              quantity: '20gr',
              image: Assets.imgCenoura,
              impact: 0.1,
              color: Colors.green,
              measure: AppLocalizations.of(context)!.carbon),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }
}
