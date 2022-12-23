import 'package:canteco_app/utils/assets.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_buttom_home.dart';
import '../../../widgets/schedule_buttom.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePagestate();
}

class _HomePagestate extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: const [
                  Expanded(
                    child: CustomButtonHome(
                      assetName: Assets.icCalendar,
                      text: "Schedules",
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: CustomButtonHome(
                      assetName: Assets.icPrice,
                      text: "Price List",
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const CustomScheduleB(
                text: 'Schedule your meal',
                assetName: Assets.icAdd,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
