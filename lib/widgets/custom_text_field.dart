import 'package:flutter/material.dart';
import '../utils/theme.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final formKey = GlobalKey<FormState>();

  final bool isPassword;

  final String label;
  final String hint;
  final String? tralingIcon;
  final String? errorText;

  CustomTextField(
      {super.key,
      required this.controller,
      required this.label,
      this.isPassword = false,
      required this.hint,
      this.tralingIcon,
      this.errorText});

  @override
  Widget build(BuildContext context) {
    var defaultBorder = const OutlineInputBorder(
      borderSide: BorderSide(
        color: CustomTheme.cultured,
        width: 1.0,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    );

    var errorBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(context).errorColor,
        width: 1.0,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(10.0),
      ),
    );

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
              child: TextFormField(
                style: const TextStyle(color: CustomTheme.eerieBlack),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formKey,
                controller: controller,
                obscureText: isPassword,
                decoration: InputDecoration(
                  errorText: errorText,
                  errorStyle: Theme.of(context)
                      .primaryTextTheme
                      .subtitle1
                      ?.copyWith(color: Theme.of(context).errorColor),
                  errorBorder: errorBorder,
                  errorMaxLines: 1,
                  border: defaultBorder,
                  filled: true,
                  fillColor: CustomTheme.cultured,
                  hintText: hint,
                  labelStyle: Theme.of(context).primaryTextTheme.headline3,
                  hintStyle: Theme.of(context)
                      .primaryTextTheme
                      .subtitle1
                      ?.copyWith(color: CustomTheme.silver),
                  enabledBorder: defaultBorder,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
