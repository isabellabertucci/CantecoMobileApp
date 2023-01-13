import 'package:flutter/material.dart';
import '../utils/theme.dart';

class PopUpLoader extends StatefulWidget {
  final String title;
  final String description;

  const PopUpLoader(
      {super.key, required this.title, required this.description});

  @override
  State<PopUpLoader> createState() => _PopUpDialogState();
}

class _PopUpDialogState extends State<PopUpLoader> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: Text(
        widget.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).primaryTextTheme.headline1,
      ),
      content: Text(
        widget.description,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.subtitle1,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(
                backgroundColor: CustomTheme.cultured,
                valueColor:
                    AlwaysStoppedAnimation<Color>(CustomTheme.ultramarineBlue),
              )
            ],
          ),
        ),
      ],
    );
  }
}
