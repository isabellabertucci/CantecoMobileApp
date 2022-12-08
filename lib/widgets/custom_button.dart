import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onTap;
  double? width;
  Color? textColor;
  Color? backgroundColor;
  bool enabled;

  CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width,
    this.textColor,
    this.backgroundColor,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.5,
      height: 50,
      child: ElevatedButton(
        onPressed: enabled ? () => onTap() : null,
        child: Text(text),
      ),
    );
  }
}
