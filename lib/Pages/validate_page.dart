import 'package:canteco_app/Pages/homepage1_page.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class ValidatePage extends StatefulWidget {
  const ValidatePage({super.key});

  @override
  State<ValidatePage> createState() => _ValidatePageState();
}

class _ValidatePageState extends State<ValidatePage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  labelText: 'email',
                  border: OutlineInputBorder(),
                ),
                validator: (email) =>
                    email != null && !EmailValidator.validate(email)
                        ? 'enter a vlidad email'
                        : null,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'password',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value != null && value.length < 8) {
                    return 'enter min 8 characters';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                text: 'Log in',
                onTap: () {
                  final isValidForm = formKey.currentState!.validate();
                  if (isValidForm) {}
                },
              ),
            ],
          ),
        ));
  }
}
