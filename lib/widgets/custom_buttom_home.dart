import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButtonHome extends StatelessWidget {
  final String assetName;
  final String text;
  final Function onTap;

  const CustomButtonHome(
      {super.key,
      required this.assetName,
      required this.text,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    var radius = BorderRadius.circular(10.0);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: radius,
      ),
      elevation: 2,
      child: InkWell(
        onTap: () => onTap(),
        borderRadius: radius,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 125,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                assetName,
                width: 48,
                height: 48,
              ),
              const SizedBox(height: 10),
              Text(
                text,
                style: Theme.of(context).primaryTextTheme.subtitle1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
