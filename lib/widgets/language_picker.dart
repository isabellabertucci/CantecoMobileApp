import 'package:flutter/material.dart';
import 'package:canteco_app/Langs/l10n.dart';

import '../utils/theme.dart';

class LanguageMyWidget extends StatelessWidget {
  const LanguageMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final flag = L10n.getFlag(locale.languageCode);

    return Center(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: CustomTheme.ultramarineBlue.withOpacity(0.25),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          backgroundColor: CustomTheme.cultured,
          radius: 20,
          child: Text(
            flag,
            style: const TextStyle(fontSize: 17),
          ),
        ),
      ),
    );
  }
}
