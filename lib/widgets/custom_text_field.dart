import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/theme.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  bool isPassword;

  final String label;
  CustomTextField(
      {super.key,
      required this.controller,
      required this.label,
      this.isPassword = false});

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
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            filled: true,
            fillColor: CustomTheme.cultured,
            hintText: "testest",
            labelStyle: Theme.of(context).primaryTextTheme.headline3,
            hintStyle: Theme.of(context)
                .primaryTextTheme
                .headline3
                ?.copyWith(color: CustomTheme.silver),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: CustomTheme.cultured),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
        )
      ],
    );
  }
}
