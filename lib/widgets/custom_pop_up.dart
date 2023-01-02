import 'package:canteco_app/widgets/custom_buttom3.dart';
import 'package:flutter/material.dart';
import '../utils/theme.dart';

class PopUpDialog extends StatelessWidget {
  final String title;
  final String description;
  const PopUpDialog(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context).primaryTextTheme.headline1,
      ),
      content: Text(
        description,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.subtitle1,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton3(
                backgroundColor: const Color.fromARGB(255, 232, 232, 232),
                text: "Cancel",
                textColor: CustomTheme.ultramarineBlue,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                width: 15,
              ),
              CustomButton3(
                backgroundColor: Theme.of(context).primaryColor,
                text: "Confirm",
                textColor: CustomTheme.white,
                onTap: () {
                  //fazer algo
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
