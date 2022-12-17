import 'package:canteco_app/widgets/custom_button2.dart';
import 'package:flutter/material.dart';
import '../utils/assets.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/input_date.dart';
import '../widgets/input_search.dart';

class CreateAccountPage2 extends StatefulWidget {
  const CreateAccountPage2({super.key});

  @override
  State<CreateAccountPage2> createState() => _LoginPageState();
}

class _LoginPageState extends State<CreateAccountPage2> {
  final _TextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  'School Information',
                  style: Theme.of(context).primaryTextTheme.headline2,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  Text(
                    'Instituition',
                    style: Theme.of(context).primaryTextTheme.headline3,
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
              const SizedBox(height: 10),
              InputSearch(
                  hint: 'Enter your Instituition', icon: Assets.icAngle),
              const SizedBox(height: 25),
              Row(
                children: [
                  Text(
                    'School name',
                    style: Theme.of(context).primaryTextTheme.headline3,
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
              const SizedBox(height: 10),
              InputSearch(hint: 'Enter your School name', icon: Assets.icAngle),
              const SizedBox(height: 25),
              Row(
                children: [
                  Text(
                    'Course name',
                    style: Theme.of(context).primaryTextTheme.headline3,
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
              const SizedBox(height: 10),
              InputSearch(hint: 'Enter your Course name', icon: Assets.icAngle),
              const SizedBox(height: 25),
              CustomTextField(
                label: 'School number ',
                hint: 'Enter your school number ',
                isPassword: false,
                controller: _TextController,
              ),
              const SizedBox(height: 130),
              Row(
                children: [
                  Expanded(
                    child: CustomButton2(
                      text: 'Back',
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: CustomButton2(
                      text: 'Next',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 45),
              Text(
                'If you already have an account. Log In',
                style: Theme.of(context).primaryTextTheme.headline3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
