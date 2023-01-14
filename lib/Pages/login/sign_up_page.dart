import 'package:canteco_app/utils/theme.dart';
import 'package:canteco_app/widgets/custom_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../domain/login/login_gateway.dart';
import '../../utils/routes.dart';
import '../../widgets/custom_text_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                    AppLocalizations.of(context)!.persInfo,
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
                          label: AppLocalizations.of(context)!.fullName,
                          hint: AppLocalizations.of(context)!.enterEmail,
                          isPassword: false,
                          controller: _nameController,
                        ),
                        const SizedBox(height: 20),
                        CustomTextField(
                          label: AppLocalizations.of(context)!.schoolEmail,
                          hint: AppLocalizations.of(context)!.schoolEmailEnter,
                          errorText:
                              _showError ? "Email already registed" : null,
                          isPassword: false,
                          controller: _emailController,
                        ),
                        const SizedBox(height: 20),
                        CustomTextField(
                          label: AppLocalizations.of(context)!.userRole,
                          hint: AppLocalizations.of(context)!.userRoleEnter,
                          isPassword: false,
                          controller: _roleController,
                        ),
                        const SizedBox(height: 20),
                        CustomTextField(
                          label: AppLocalizations.of(context)!.registerPassword,
                          hint: AppLocalizations.of(context)!.enterPassword,
                          isPassword: true,
                          controller: _passwordController,
                        ),
                        const SizedBox(height: 20),
                        CustomTextField(
                          label: AppLocalizations.of(context)!.confirmPass,
                          hint: AppLocalizations.of(context)!.confirmPassEnter,
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
                    text: AppLocalizations.of(context)!.create,
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
                          text: AppLocalizations.of(context)!.ifHave,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        TextSpan(
                            text: AppLocalizations.of(context)!.logIn,
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
