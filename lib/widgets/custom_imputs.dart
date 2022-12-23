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
            text: 'teste',
            onTap: () => {},
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          flex: 1,
          child: CustomButton(
            text: 'test2',
            onTap: () => {},
          ),
        ),
      ],
    );
  }
}
