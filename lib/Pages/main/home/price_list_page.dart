import 'package:flutter/material.dart';
import '../../../widgets/custom_price_list.dart';

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Price List',
                  style: Theme.of(context).primaryTextTheme.headline1,
                ),
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
            PriceList(user: 'Student', withoutIva: '2.75', withIva: '2.75'),
            const SizedBox(
              height: 20,
            ),
            PriceList(user: 'Teacher', withoutIva: '4.00', withIva: '4.00'),
            const SizedBox(
              height: 20,
            ),
            PriceList(user: 'Guest', withoutIva: '4.00', withIva: '4.00'),
            const SizedBox(
              height: 20,
            ),
            PriceList(user: 'Scholarship', withoutIva: '2.25', withIva: '2.25'),
            const SizedBox(
              height: 20,
            ),
            PriceList(user: 'Employee', withoutIva: '4.00', withIva: '4.00'),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    ));
  }
}