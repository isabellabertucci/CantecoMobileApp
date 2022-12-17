import 'package:canteco_app/utils/assets.dart';
import 'package:canteco_app/utils/theme.dart';
import 'package:canteco_app/widgets/custom_buttom_home.dart';

import 'package:canteco_app/widgets/custom_card.dart';
import 'package:canteco_app/widgets/custom_button.dart';
import 'package:canteco_app/widgets/custom_imputs.dart';
import 'package:canteco_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                backgroundColor: CustomTheme.cultured,
                textColor: CustomTheme.skyBlueCrayola,
                text: "test",
                onTap: () => {},
              ),
              const SizedBox(height: 16),
              CustomButton(
                text: "test",
                disableBackgroundColor: CustomTheme.skyBlueCrayola,
                enabled: false,
                onTap: () => {},
              ),
              const SizedBox(height: 16),
              CustomTextField(label: "text", hint: "", controller: controller),
              const SizedBox(height: 16),
              CustomTextField(
                label: "Password",
                hint: "",
                controller: controller2,
                isPassword: true,
              ),
              const SizedBox(height: 30),
              CustomCard(
                title: "title",
                subtitle: "subtitle",
                icon: Assets.icHomeC,
              ),
              const SizedBox(height: 30),
              CustomCard(
                title: "title",
                subtitle: "subtitle",
                icon: Assets.icHomeC,
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: CustomTheme.ultramarineBlue,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) => {setState(() => currentIndex = index)},
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icHomeU,
                height: 26,
                color: currentIndex == 0
                    ? CustomTheme.ultramarineBlue
                    : CustomTheme.silver),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icUtensilsU,
                height: 26,
                color: currentIndex == 1
                    ? CustomTheme.ultramarineBlue
                    : CustomTheme.silver),
            label: 'Meals',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icSeachU,
                height: 26,
                color: currentIndex == 2
                    ? CustomTheme.ultramarineBlue
                    : CustomTheme.silver),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icUserU,
                height: 26,
                color: currentIndex == 3
                    ? CustomTheme.ultramarineBlue
                    : CustomTheme.silver),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
