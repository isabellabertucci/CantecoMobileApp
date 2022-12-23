import 'package:canteco_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomScheduleB extends StatelessWidget {
  final String assetName;
  final String text;
  const CustomScheduleB(
      {super.key, required this.assetName, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: CustomTheme.ultramarineBlue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 2,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 9,
                  child: Text(text,
                      style: Theme.of(context)
                          .primaryTextTheme
                          .headline3
                          ?.copyWith(color: CustomTheme.white))),
              Expanded(
                  flex: 1,
                  child: SvgPicture.asset(
                    assetName,
                    width: 30,
                    height: 30,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
