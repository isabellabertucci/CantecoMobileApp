import 'package:flutter/material.dart';

import '../widgets/custom_price_list.dart';

class PriceListPage extends StatefulWidget {
  const PriceListPage({super.key});

  @override
  State<PriceListPage> createState() => _PriceListPageState();
}

class _PriceListPageState extends State<PriceListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Users'),
              Text('w/ IVA'),
              Text('w/o IVA'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          PriceList(user: 'Student', withoutIva: '2.75', withIva: '2.75'),
          SizedBox(
            height: 20,
          ),
          PriceList(user: 'Teacher', withoutIva: '4.00', withIva: '4.00'),
          SizedBox(
            height: 20,
          ),
          PriceList(user: 'Guest', withoutIva: '4.00', withIva: '4.00'),
          SizedBox(
            height: 20,
          ),
          PriceList(user: 'Scholarship', withoutIva: '2.25', withIva: '2.25'),
          SizedBox(
            height: 20,
          ),
          PriceList(user: 'Employee', withoutIva: '4.00', withIva: '4.00'),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
    ;
  }
}
