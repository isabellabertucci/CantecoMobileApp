import 'package:canteco_app/utils/assets.dart';
import 'package:canteco_app/utils/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class InputDate extends StatefulWidget {
  final String text;
  final String icon;
  final Function(DateTime)? callBack;

  const InputDate({
    super.key,
    required this.icon,
    required this.text,
    this.callBack,
  });

  @override
  // ignore: no_logic_in_create_state
  State<InputDate> createState() => _InputDateState();
}

class _InputDateState extends State<InputDate> {
  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2024),
    ).then((value) => setState(() {
          _dateTime = value!;
          widget.callBack!(_dateTime);
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: CustomTheme.cultured,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: Text("${_dateTime.day} / ${_dateTime.month} / ${_dateTime.year}",
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
