import 'package:canteco_app/widgets/input_search.dart';
import 'package:flutter/material.dart';
import '../utils/assets.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/input_date.dart';

class CreateAccountPage1 extends StatefulWidget {
  const CreateAccountPage1({super.key});

  @override
  State<CreateAccountPage1> createState() => _LoginPageState();
}

class _LoginPageState extends State<CreateAccountPage1> {
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
                  'Personal Information',
                  style: Theme.of(context).primaryTextTheme.headline2,
                ),
              ),
              const SizedBox(height: 40),
              CustomTextField(
                label: 'Full name',
                hint: 'Enter your name',
                isPassword: false,
                controller: _TextController,
              ),
              const SizedBox(height: 25),
              CustomTextField(
                label: 'School Email ',
                hint: 'Enter your school email',
                isPassword: false,
                controller: _TextController,
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
                controller: _PasswordController,
              ),
              const SizedBox(height: 40),
              CustomButton(
                text: 'Next',
                onTap: () {},
              ),
              const SizedBox(height: 54),
              Text(
                'If you already have an account. Log In',
                style: Theme.of(context).primaryTextTheme.headline3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
