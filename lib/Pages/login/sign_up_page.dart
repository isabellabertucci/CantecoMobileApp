import 'package:canteco_app/utils/theme.dart';
import 'package:canteco_app/widgets/custom_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../domain/login/login_gateway.dart';

import '../../utils/routes.dart';
import '../../widgets/custom_text_field.dart';

class SignUpPageMain extends StatefulWidget {
  const SignUpPageMain({super.key});

  @override
  State<SignUpPageMain> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpPageMain> {
  final _loginGateway = LoginGateway();
  bool _showError = false;
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _roleController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //seta
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.adaptive.arrow_back)),
                      //logo
                      Hero(
                        tag: 'Logo',
                        child: Image.asset(
                          "assets/images/logo_txt.png",
                        ),
                      ),
                      //espaço vazio
                      const SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Personal Information',
                    style: Theme.of(context).primaryTextTheme.headline2,
                  ),
                  const SizedBox(height: 25),
                  //todos campos
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 375,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        CustomTextField(
                          label: 'Full name',
                          hint: 'Enter your name',
                          isPassword: false,
                          controller: _nameController,
                        ),
                        const SizedBox(height: 20),
                        CustomTextField(
                          label: 'School Email ',
                          hint: 'Enter your school email',
                          errorText:
                              _showError ? "Emai already registed" : null,
                          isPassword: false,
                          controller: _emailController,
                        ),
                        const SizedBox(height: 20),
                        CustomTextField(
                          label: 'User role',
                          hint: 'Enter your role',
                          isPassword: false,
                          controller: _roleController,
                        ),
                        const SizedBox(height: 20),
                        CustomTextField(
                          label: 'Password',
                          hint: 'Enter your password',
                          isPassword: true,
                          controller: _passwordController,
                        ),
                        const SizedBox(height: 20),
                        CustomTextField(
                          label: 'Confirm Password',
                          hint: 'Confirm password',
                          isPassword: true,
                          controller: _confirmPasController,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  //botão SignUp
                  CustomButton(
                    textColor: CustomTheme.white,
                    text: 'Create',
                    onTap: () async {
                      var loginResult = await _loginGateway.signUp(
                        fullName: _nameController.text,
                        email: _emailController.text,
                        password: _passwordController.text,
                        confirmPassword: _confirmPasController.text,
                      );

                      if (loginResult >= 200 && loginResult <= 299) {
                        setState(() {
                          Navigator.pushNamed(context, Routes.loginPage);
                        });
                      } else {
                        setState(() {
                          _showError = true;
                        });
                      }
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
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
                              ..onTap = () => Navigator.pushNamed(
                                  context, Routes.loginPage)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
