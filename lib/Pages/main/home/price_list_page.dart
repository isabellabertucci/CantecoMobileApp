import 'package:flutter/material.dart';
import '../../../widgets/custom_price_list.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PriceListPage extends StatefulWidget {
  const PriceListPage({super.key});

  @override
  State<PriceListPage> createState() => _PriceListPageState();
}

class _PriceListPageState extends State<PriceListPage> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.adaptive.arrow_back),
                ),
                Text(
                  AppLocalizations.of(context)!.priceList,
                  style: Theme.of(context).primaryTextTheme.headline1,
                ),
                const SizedBox(
                  width: 25,
                  height: 25,
                )
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.type,
                  style: Theme.of(context).primaryTextTheme.headline3,
                ),
                Text(
                  AppLocalizations.of(context)!.wIva,
                  style: Theme.of(context).primaryTextTheme.headline3,
                ),
                Text(
                  AppLocalizations.of(context)!.woIva,
                  style: Theme.of(context).primaryTextTheme.headline3,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            PriceList(
                user: AppLocalizations.of(context)!.student,
                withoutIva: '2.75',
                withIva: '2.75'),
            const SizedBox(
              height: 20,
            ),
            PriceList(
                user: AppLocalizations.of(context)!.teacher,
                withoutIva: '4.00',
                withIva: '4.00'),
            const SizedBox(
              height: 20,
            ),
            PriceList(
                user: AppLocalizations.of(context)!.guest,
                withoutIva: '4.00',
                withIva: '4.00'),
            const SizedBox(
              height: 20,
            ),
            PriceList(
                user: AppLocalizations.of(context)!.scholarship,
                withoutIva: '2.25',
                withIva: '2.25'),
            const SizedBox(
              height: 20,
            ),
            PriceList(
                user: AppLocalizations.of(context)!.employee,
                withoutIva: '4.00',
                withIva: '4.00'),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    ));
  }
}
