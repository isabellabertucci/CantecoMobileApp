import 'package:canteco_app/domain/login/login_gateway.dart';
import 'package:canteco_app/utils/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../utils/routes.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_pop_up_loader.dart';
import '../../widgets/custom_text_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginGateway = LoginGateway();
  final _textController = TextEditingController();
  final _passwordController = TextEditingController();
  var _showEmailError = false;
  var _showPasswordError = false;

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return PopUpLoader(
              title: AppLocalizations.of(context)!.loading,
              description: AppLocalizations.of(context)!.loadingM);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Spacer(),
                Hero(
                  tag: 'Logo',
                  child: Image.asset(
                    "assets/images/logo_txt.png",
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                  child: Text(
                    AppLocalizations.of(context)!.logIn,
                    style: Theme.of(context).primaryTextTheme.headline2,
                  ),
                ),
                const SizedBox(height: 40),
                CustomTextField(
                  label: AppLocalizations.of(context)!.email,
                  hint: AppLocalizations.of(context)!.enterEmail,
                  isPassword: false,
                  errorText: _showEmailError ? "User not found" : null,
                  controller: _textController,
                ),
                const SizedBox(height: 25),
                CustomTextField(
                  label: AppLocalizations.of(context)!.registerPassword,
                  hint: AppLocalizations.of(context)!.enterPassword,
                  isPassword: true,
                  controller: _passwordController,
                  errorText: _showPasswordError ? "Invalid password" : null,
                ),
                const SizedBox(height: 40),
                CustomButton(
                  text: AppLocalizations.of(context)!.logIn,
                  onTap: () async {
                    _showDialog();
                    var loginResult = await _loginGateway.login(
                        email: _textController.text,
                        password: _passwordController.text);
                    if (loginResult >= 200 && loginResult <= 299) {
                      setState(() {
                        Navigator.pushNamedAndRemoveUntil(
                            context, Routes.onboardingPage, (route) => false);
                      });
                    } else {
                      setState(() {
                        if (loginResult == 422) {
                          _showPasswordError = false;
                          _showEmailError = true;
                        } else {
                          _showEmailError = false;
                          _showPasswordError = true;
                        }
                        Navigator.pop(context);
                      });
                    }
                  },
                ),
                const Spacer(),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: AppLocalizations.of(context)!.dontHave,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      TextSpan(
                          text: AppLocalizations.of(context)!.signUp,
                          style: const TextStyle(
                              color: CustomTheme.ultramarineBlue,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.pushNamed(
                                context, Routes.signUpMain)),
                    ],
                  ),
                ),
                const Spacer(flex: 4)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
