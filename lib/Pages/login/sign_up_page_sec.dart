import 'package:canteco_app/utils/theme.dart';
import 'package:canteco_app/widgets/custom_button2.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../utils/routes.dart';
import '../../widgets/custom_text_field.dart';

//Pagina criada por causa do design mas não usada na criação de conta
//devido a simplificar o processo de sign up

class SignUpPageSec extends StatefulWidget {
  const SignUpPageSec({super.key});

  @override
  State<SignUpPageSec> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpPageSec> {
  final _instituitionController = TextEditingController();
  final _schoolController = TextEditingController();
  final _courseController = TextEditingController();
  final _schoolNumController = TextEditingController();

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
                    'School Information',
                    style: Theme.of(context).primaryTextTheme.headline2,
                  ),
                ),
                const SizedBox(height: 40),
                CustomTextField(
                  label: 'Instituition',
                  hint: 'Enter your Instituition',
                  isPassword: false,
                  controller: _instituitionController,
                ),
                const SizedBox(height: 25),
                CustomTextField(
                  label: 'School name',
                  hint: 'Enter your School name',
                  isPassword: false,
                  controller: _schoolController,
                ),
                const SizedBox(height: 25),
                CustomTextField(
                  label: 'Course name',
                  hint: 'Enter your Course name',
                  isPassword: false,
                  controller: _courseController,
                ),
                const SizedBox(height: 25),
                CustomTextField(
                  label: 'School number ',
                  hint: 'Enter your School number ',
                  isPassword: false,
                  controller: _schoolNumController,
                ),
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton2(
                          backgroundColor: const Color.fromARGB(255, 236, 236,
                              236), //mudei o cultured pois nao se via, (nao fica igual ao design)
                          textColor: CustomTheme.ultramarineBlue,
                          text: 'Back',
                          onTap: () => Navigator.of(context).pop()),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: CustomButton2(
                          textColor: CustomTheme.white,
                          text: 'Create',
                          onTap: () =>
                              Navigator.pushNamed(context, Routes.loginPage)),
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
                const Spacer(flex: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
