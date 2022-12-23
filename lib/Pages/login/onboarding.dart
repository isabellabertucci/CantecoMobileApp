import 'package:canteco_app/utils/assets.dart';
import 'package:canteco_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/routes.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController _pageController = PageController();
  var _currentPage = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: _currentPage);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, Routes.menuPage, (route) => false),
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('skip'),
                    const SizedBox(
                      width: 15,
                    ),
                    SvgPicture.asset(Assets.icArrowR)
                  ],
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                itemCount: demo_data.length,
                controller: _pageController,
                itemBuilder: (context, index) => OnboardContent(
                  image: demo_data[index].image,
                  title: demo_data[index].title,
                  description: demo_data[index].description,
                ),
                onPageChanged: (currentPage) =>
                    {setState(() => _currentPage = currentPage)},
              ),
            ),
            CustomButton(
              text: _currentPage == 2 ? "Done" : "Next",
              onTap: () {
                _currentPage == 2
                    ? Navigator.pushNamedAndRemoveUntil(
                        context, Routes.menuPage, (route) => false)
                    : _pageController.nextPage(
                        duration: const Duration(microseconds: 5000),
                        curve: Curves.ease);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard(
      {required this.image, required this.title, required this.description});
}

// ignore: non_constant_identifier_names
final List<Onboard> demo_data = [
  Onboard(
    image: "assets/images/onboard_2.svg",
    title: "A Project",
    description:
        'Through an eco-school project we have redesigned the app so each of us can make more conscious decisions of what we eat and how that impacts our future.',
  ),
  Onboard(
    image: "assets/images/onboard_2.svg",
    title: "The Basics",
    description:
        'Start exploring our app by checking each item of food we cosume daily which will show the impact it makes in our environment',
  ),
  Onboard(
    image: "assets/images/onboard_3.svg",
    title: "A message",
    description:
        'Let’s improve the world together and help people be more conscious of what they put in their bodies. Let’s go.',
  ),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Spacer(),
          SvgPicture.asset(
            image,
            height: 300,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            textAlign: TextAlign.center,
            description,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
