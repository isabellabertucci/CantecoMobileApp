import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  final String text;
  final Function onTap;
  double? width;
  Color? textColor;
  Color? backgroundColor;
  Color? disableBackgroundColor;
  bool enabled;

  CustomButton2({
    super.key,
    required this.text,
    required this.onTap,
    this.width,
    this.textColor,
    this.backgroundColor,
    this.disableBackgroundColor,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width / 2,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: backgroundColor,
            disabledBackgroundColor: disableBackgroundColor),
        onPressed: enabled ? () => onTap() : null,
        child: Text(
          text,
          style:
              Theme.of(context).textTheme.headline2?.copyWith(color: textColor),
        ),
      ),
    );
  }
}
