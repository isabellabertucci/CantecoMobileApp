import 'package:canteco_app/utils/assets.dart';
import 'package:canteco_app/utils/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:canteco_app/utils/assets.dart';

import '2_sign_up_page.dart';
import '4_onboarding.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _TextController = TextEditingController();
  final _PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 50),
              SvgPicture.asset(
                Assets.icCalendar,
                height: 48,
              ),
              const SizedBox(height: 40),
              Center(
                child: Text(
                  'Log in',
                  style: Theme.of(context).primaryTextTheme.headline2,
                ),
              ),
              const SizedBox(height: 40),
              CustomTextField(
                label: 'Email',
                hint: 'Enter with your email',
                isPassword: false,
                controller: _TextController,
              ),
              const SizedBox(height: 25),
              CustomTextField(
                label: 'Password',
                hint: 'Enter with your password',
                isPassword: true,
                controller: _PasswordController,
              ),
              const SizedBox(height: 40),
              CustomButton(
                text: 'Log in',
                onTap: () {
                  //if credentials right go to onboarding
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OnBoarding()),
                  );
                },
              ),
              const SizedBox(height: 260),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Don’t have an account? ',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                            color: CustomTheme.ultramarineBlue,
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPageMain()),
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
