import 'package:canteco_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../utils/theme.dart';

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
    final List<Onboard> demoData = [
      Onboard(
        image: "assets/images/onboard_1.svg",
        title: AppLocalizations.of(context)!.onboarding1Title,
        description: AppLocalizations.of(context)!.onboarding1Desc,
      ),
      Onboard(
        image: "assets/images/onboard_2.svg",
        title: AppLocalizations.of(context)!.onboarding2Title,
        description: AppLocalizations.of(context)!.onboarding2Desc,
      ),
      Onboard(
        image: "assets/images/onboard_3.svg",
        title: AppLocalizations.of(context)!.onboarding3Title,
        description: AppLocalizations.of(context)!.onboarding3Desc,
      ),
    ];
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
                    const Spacer(),
                    Text(AppLocalizations.of(context)!.skip,
                        style: Theme.of(context).primaryTextTheme.headline6),
                    const SizedBox(width: 15),
                    Icon(Icons.adaptive.arrow_forward),
                  ],
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                itemCount: demoData.length,
                controller: _pageController,
                itemBuilder: (context, index) => OnboardContent(
                  image: demoData[index].image,
                  title: demoData[index].title,
                  description: demoData[index].description,
                ),
                onPageChanged: (currentPage) =>
                    {setState(() => _currentPage = currentPage)},
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: demoData.length,
              effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                    height: 15,
                    width: 15,
                    color: CustomTheme.silver,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  activeDotDecoration: DotDecoration(
                    height: 15,
                    width: 15,
                    color: CustomTheme.ultramarineBlue,
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              text: _currentPage == 2
                  ? AppLocalizations.of(context)!.done
                  : AppLocalizations.of(context)!.next,
              onTap: () {
                _currentPage == 2
                    ? Navigator.pushNamedAndRemoveUntil(
                        context, Routes.menuPage, (route) => false)
                    : _pageController.nextPage(
                        duration: const Duration(microseconds: 5000),
                        curve: Curves.ease);
              },
            ),
            const SizedBox(
              height: 100,
            )
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
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            textAlign: TextAlign.center,
            description,
            style: Theme.of(context).primaryTextTheme.subtitle1,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
