import 'package:canteco_app/Pages/2_sign_up_page.dart';
import 'package:canteco_app/utils/theme.dart';
import 'package:canteco_app/widgets/custom_button2.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../utils/assets.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/input_date.dart';
import '../widgets/input_search.dart';
import '1_login_page.dart';

class SignUpPageSec extends StatefulWidget {
  const SignUpPageSec({super.key});

  @override
  State<SignUpPageSec> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpPageSec> {
  final _InstituitionController = TextEditingController();
  final _SchoolController = TextEditingController();
  final _CourseController = TextEditingController();
  final _TextController = TextEditingController();
  final _SchoolNumController = TextEditingController();

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
              CustomTextField(
                label: 'Instituition',
                hint: 'Enter your Instituition',
                isPassword: false,
                controller: _InstituitionController,
              ),
              const SizedBox(height: 25),
              CustomTextField(
                label: 'School name',
                hint: 'Enter your School name',
                isPassword: false,
                controller: _SchoolController,
              ),
              const SizedBox(height: 25),
              CustomTextField(
                label: 'Course name',
                hint: 'Enter your Course name',
                isPassword: false,
                controller: _CourseController,
              ),
              const SizedBox(height: 25),
              CustomTextField(
                label: 'School number ',
                hint: 'Enter your School number ',
                isPassword: false,
                controller: _SchoolNumController,
              ),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: CustomButton2(
                      backgroundColor: Color.fromARGB(255, 236, 236,
                          236), //mudei o cultured pois nao se via, (nao fica igual ao design)
                      textColor: CustomTheme.ultramarineBlue,
                      text: 'Back',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPageMain()),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: CustomButton2(
                      textColor: CustomTheme.white,
                      text: 'Create',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Spacer(),
              const SizedBox(height: 45),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'If you already have an account. ',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    TextSpan(
                        text: 'Log In',
                        style: TextStyle(
                            color: CustomTheme.ultramarineBlue,
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()),
                            );
                          }),
                  ],
                ),
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
