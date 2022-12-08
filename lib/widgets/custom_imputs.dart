import 'package:canteco_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'custom_button.dart';

class CustomInputs extends StatelessWidget {
  const CustomInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      /* mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
      children: [
        //shoud be expanded when you need divide the buttons in screen.
        Expanded(
          flex: 1,
          child: CustomButton(
            text: 'oiii',
            onTap: () => {},
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          flex: 1,
          child: CustomButton(
            text: 'test3',
            onTap: () => {},
          ),
        ),
      ],
    );
  }
}
