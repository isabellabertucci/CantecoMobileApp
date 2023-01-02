import 'package:canteco_app/Pages/login/sign_up_page_sec.dart';
import 'package:canteco_app/utils/theme.dart';
import 'package:canteco_app/widgets/custom_button2.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../utils/routes.dart';
import '../../widgets/custom_text_field.dart';

class SignUpPageMain extends StatefulWidget {
  const SignUpPageMain({super.key});

  @override
  State<SignUpPageMain> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpPageMain> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
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
                  controller: _nameController,
                ),
                const SizedBox(height: 25),
                CustomTextField(
                  label: 'School Email ',
                  hint: 'Enter your school email',
                  isPassword: false,
                  controller: _emailController,
                ),
                const SizedBox(height: 25),
                CustomTextField(
                  label: 'Password',
                  hint: 'Enter your password',
                  isPassword: true,
                  controller: _passwordController,
                ),
                const SizedBox(height: 25),
                CustomTextField(
                  label: 'Confirm Password',
                  hint: 'Confirm password',
                  isPassword: true,
                  controller: _confirmPasController,
                ),
                const Spacer(
                  flex: 2,
                ),
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
                const Spacer(),
                const SizedBox(height: 45),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'If you already have an account. ',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      TextSpan(
                          text: 'Log In',
                          style: const TextStyle(
                              color: CustomTheme.ultramarineBlue,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () =>
                                Navigator.pushNamed(context, Routes.loginPage)),
                    ],
                  ),
                ),
                const Spacer(flex: 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
