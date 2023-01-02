import 'package:flutter/material.dart';
import '../../../utils/assets.dart';
import '../../../utils/routes.dart';
import '../../../widgets/custom_price_list.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                    Navigator.pushNamedAndRemoveUntil(
                        context, Routes.menuPage, (route) => false);
                  },
                  child: SvgPicture.asset(
                    Assets.icArrowL,
                    height: 25,
                    width: 25,
                  ),
                ),
                Text(
                  'Price List',
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
                  'Users',
                  style: Theme.of(context).primaryTextTheme.headline3,
                ),
                Text(
                  'w/ IVA',
                  style: Theme.of(context).primaryTextTheme.headline3,
                ),
                Text(
                  'w/o IVA',
                  style: Theme.of(context).primaryTextTheme.headline3,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const PriceList(
                user: 'Student', withoutIva: '2.75', withIva: '2.75'),
            const SizedBox(
              height: 20,
            ),
            const PriceList(
                user: 'Teacher', withoutIva: '4.00', withIva: '4.00'),
            const SizedBox(
              height: 20,
            ),
            const PriceList(user: 'Guest', withoutIva: '4.00', withIva: '4.00'),
            const SizedBox(
              height: 20,
            ),
            const PriceList(
                user: 'Scholarship', withoutIva: '2.25', withIva: '2.25'),
            const SizedBox(
              height: 20,
            ),
            const PriceList(
                user: 'Employee', withoutIva: '4.00', withIva: '4.00'),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    ));
  }
}
