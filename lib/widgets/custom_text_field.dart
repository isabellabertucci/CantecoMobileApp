import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/theme.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  bool isPassword;

  final String label;
  final String hint;
  final String? tralingIcon;

  CustomTextField(
      {super.key,
      required this.controller,
      required this.label,
      this.isPassword = false,
      required this.hint,
      this.tralingIcon});

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
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                obscureText: isPassword,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: CustomTheme.cultured,
                  hintText: hint,
                  labelStyle: Theme.of(context).primaryTextTheme.headline3,
                  hintStyle: Theme.of(context)
                      .primaryTextTheme
                      .headline3
                      ?.copyWith(color: CustomTheme.silver),
                  enabledBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 3, color: CustomTheme.blueCrayola),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}