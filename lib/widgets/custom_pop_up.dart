import 'package:canteco_app/widgets/custom_button3.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import '../utils/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PopUpDialog extends StatefulWidget {
  final String title;
  final String description;

  const PopUpDialog(
      {super.key, required this.title, required this.description});

  @override
  State<PopUpDialog> createState() => _PopUpDialogState();
}

class _PopUpDialogState extends State<PopUpDialog> {
  bool isPLaying = false;
  final controller = ConfettiController();
  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      isPLaying = controller.state == ConfettiControllerState.playing;
    });
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton3(
                backgroundColor: const Color.fromARGB(255, 232, 232, 232),
                text: AppLocalizations.of(context)!.cancel,
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
                text: AppLocalizations.of(context)!.confirm,
                textColor: CustomTheme.white,
                onTap: () {
                  if (isPLaying) {
                    controller.stop();
                  } else {
                    controller.play();
                  }
                },
              ),
              ConfettiWidget(
                confettiController: controller,
                shouldLoop: true,
                blastDirection: -3.14 / 2,
                colors: const [
                  CustomTheme.ultramarineBlue,
                  CustomTheme.white,
                ],
                minBlastForce: 10,
                maxBlastForce: 50,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
