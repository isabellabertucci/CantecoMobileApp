import 'package:canteco_app/Pages/1_login_page.dart';
import 'package:canteco_app/Pages/3_sign_up_page.dart';
import 'package:canteco_app/utils/theme.dart';
import 'package:canteco_app/widgets/custom_button2.dart';
import 'package:canteco_app/widgets/input_search.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../utils/assets.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/input_date.dart';

class SignUpPageMain extends StatefulWidget {
  const SignUpPageMain({super.key});

  @override
  State<SignUpPageMain> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpPageMain> {
  final _NameController = TextEditingController();
  final _EmailController = TextEditingController();
  final _PasswordController = TextEditingController();
  final _ConfirmPasController = TextEditingController();

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
                  'Personal Information',
                  style: Theme.of(context).primaryTextTheme.headline2,
                ),
              ),
              const SizedBox(height: 40),
              CustomTextField(
                label: 'Full name',
                hint: 'Enter your name',
                isPassword: false,
                controller: _NameController,
              ),
              const SizedBox(height: 25),
              CustomTextField(
                label: 'School Email ',
                hint: 'Enter your school email',
                isPassword: false,
                controller: _EmailController,
              ),
              const SizedBox(height: 25),
              CustomTextField(
                label: 'Password',
                hint: 'Enter your password',
                isPassword: true,
                controller: _PasswordController,
              ),
              const SizedBox(height: 25),
              CustomTextField(
                label: 'Confirm Password',
                hint: 'Confirm password',
                isPassword: true,
                controller: _ConfirmPasController,
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton2(
                    textColor: CustomTheme.white,
                    text: 'Next',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPageSec()),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 54),
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
            ],
          ),
        ),
      ),
    );
  }
}
