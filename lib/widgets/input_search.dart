import 'package:canteco_app/utils/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class InputSearch extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String icon;
  final dynamic onchange;

  const InputSearch({
    super.key,
    required this.hint,
    required this.icon,
    required this.controller,
    required this.onchange,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: CustomTheme.cultured,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: TextFormField(
          style: const TextStyle(color: CustomTheme.eerieBlack),
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle: Theme.of(context)
                .primaryTextTheme
                .subtitle1
                ?.copyWith(color: CustomTheme.silver),
            labelStyle: Theme.of(context).primaryTextTheme.headline1,
            suffixIcon: IconButton(
              onPressed: null,
              /* ele é um icon button */
              icon: SvgPicture.asset(icon, width: 25, height: 25),
            ),
          ),
          onChanged: onchange,
        ),
      ),
    );
  }
}
