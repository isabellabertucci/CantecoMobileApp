import 'package:canteco_app/widgets/custom_button.dart';
import 'package:canteco_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                text: "test",
                onTap: () => {},
              ),
              const Divider(height: 16),
              CustomButton(
                text: "test",
                enabled: false,
                onTap: () => {},
              ),
              const Divider(height: 16),
              CustomTextField(label: "text", controller: controller)
            ],
          ),
        ),
      ),
    );
  }
}
