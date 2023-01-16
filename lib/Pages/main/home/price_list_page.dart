import 'package:canteco_app/domain/price/price_gateway.dart';
import 'package:canteco_app/domain/price/price_list_response.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_price_list.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PriceListPage extends StatefulWidget {
  const PriceListPage({super.key});

  @override
  State<PriceListPage> createState() => _PriceListPageState();
}

class _PriceListPageState extends State<PriceListPage> {
  final priceGateway = PriceGateway();
  List<Price> _priceList = [];

  @override
  void initState() {
    super.initState();
    priceGateway.getPriceList().then((List<Price> priceList) => {
          setState(() {
            _priceList = priceList;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    var localizations = AppLocalizations.of(context)!;

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
                  localizations.priceList,
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
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _priceList.length,
              itemBuilder: ((context, index) {
                return PriceList(
                  user: userType(localizations, _priceList[index].userType),
                  withoutIva: _priceList[index].priceWoIva,
                  withIva: _priceList[index].priceWIva,
                );
              }),
            )
          ],
        ),
      )),
    ));
  }

  String userType(AppLocalizations localizations, String userType) {
    switch (userType) {
      case "Teacher":
        return localizations.teacher;
      case "Scholarship":
        return localizations.scholarship;
      case "Employee":
        return localizations.employee;
      default:
        return localizations.guest;
    }
  }
}
