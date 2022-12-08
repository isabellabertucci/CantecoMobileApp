import 'package:flutter/material.dart';

class NutriStats extends StatelessWidget {
  final int statsNumber;
  final String statsInfo;

  const NutriStats({
    Key? key,
    required this.statsInfo,
    required this.statsNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(10.0)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              statsNumber.toString(),
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 2),
            Text(
              statsInfo,
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
