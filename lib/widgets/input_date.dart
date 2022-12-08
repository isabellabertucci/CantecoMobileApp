import 'package:flutter/material.dart';
import '../utils/theme.dart';

class InputData extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String text;

  const InputData(
      {super.key,
      required this.controller,
      required this.label,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: Theme.of(context).primaryTextTheme.headline3,
        ),
        const SizedBox(height: 10),
        TextField(
          controller: controller, /* controlador para  */
        )
      ],
    );
  }
}
