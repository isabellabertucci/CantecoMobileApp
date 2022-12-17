import 'package:canteco_app/utils/assets.dart';
import 'package:canteco_app/utils/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class InputSearch extends StatelessWidget {
  final String hint;
  final String icon;

  const InputSearch({
    super.key,
    required this.hint,
    required this.icon,
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
          decoration: InputDecoration(
            border: InputBorder.none,
            /* border foitirar a linha que cria do textField */

            hintText: hint,
            hintStyle: Theme.of(context)
                .primaryTextTheme
                .subtitle1
                ?.copyWith(color: CustomTheme.silver),
            suffixIcon: IconButton(
              onPressed: null,
              /* ele é um icon button */
              icon: SvgPicture.asset(icon, width: 25, height: 25),
            ),
          ),
        ),
      ),
    );
  }
}
