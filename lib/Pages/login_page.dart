import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

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
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot your password?',
                    style: Theme.of(context).primaryTextTheme.headline3,
                  ),
                ],
              ),
              const SizedBox(height: 40),
              CustomButton(
                text: 'Log in',
                onTap: () {},
              ),
              const SizedBox(height: 260),
              Text(
                'Don’t have an account? Sign Up',
                style: Theme.of(context).primaryTextTheme.headline3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
