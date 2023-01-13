import 'package:canteco_app/domain/login/login_gateway.dart';
import 'package:canteco_app/utils/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../utils/routes.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_pop_up_loader.dart';
import '../../widgets/custom_text_field.dart';

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
          return const PopUpLoader(
              title: 'Loading', description: 'this won\'t take long');
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
                    'Log in',
                    style: Theme.of(context).primaryTextTheme.headline2,
                  ),
                ),
                const SizedBox(height: 40),
                CustomTextField(
                  label: 'Email',
                  hint: 'Enter with your email',
                  isPassword: false,
                  errorText: _showEmailError ? "User not found" : null,
                  controller: _textController,
                ),
                const SizedBox(height: 25),
                CustomTextField(
                  label: 'Password',
                  hint: 'Enter with your password',
                  isPassword: true,
                  controller: _passwordController,
                  errorText: _showPasswordError ? "Invalid password" : null,
                ),
                const SizedBox(height: 40),
                CustomButton(
                  text: 'Log in',
                  onTap: () async {
                    var loginResult = await _loginGateway.login(
                        email: _textController.text,
                        password: _passwordController.text);
                    if (loginResult >= 200 && loginResult <= 299) {
                      setState(() {
                        _showDialog();
                        Navigator.pushNamedAndRemoveUntil(
                            context, Routes.onboardingPage, (route) => false);
                      });
                    } else {
                      setState(() {
                        if (loginResult == 422) {
                          _showPasswordError = true;
                          _showEmailError = false;
                        } else {
                          _showEmailError = true;
                          _showPasswordError = false;
                        }
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
                        text: 'Don’t have an account? ',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      TextSpan(
                          text: 'Sign Up',
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
