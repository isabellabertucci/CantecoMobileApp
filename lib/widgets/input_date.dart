import 'package:canteco_app/utils/assets.dart';
import 'package:canteco_app/utils/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class InputDate extends StatefulWidget {
  final String text;
  final String icon;

  const InputDate({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  State<InputDate> createState() => _InputDateState();
}

class _InputDateState extends State<InputDate> {
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime(2024),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: CustomTheme.cultured,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: Text(widget.text,
            style: Theme.of(context).primaryTextTheme.subtitle1),
        trailing: InkWell(
          onTap: _showDatePicker,
          child: SvgPicture.asset(
            Assets.icAngle,
            height: 25,
            width: 25,
          ),
        ),
      ),
    );
  }
}
