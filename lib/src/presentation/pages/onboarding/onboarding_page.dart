import 'package:flutter/material.dart';

import '../../../config/size/size.dart';
import '../../../core/constants/colors.dart';
import '../../../data/models/welcom.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/header_text.dart';
import '../login/login_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int selectedIndex = 0;
  late final pageController = PageController(viewportFraction: 0.7);

  @override
  Widget build(BuildContext context) {
    SizeComp.initializeSizes(context);
    final fSize = SizeComp.fSize;
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Skip'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: fSize * 4),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              height: MediaQuery.of(context).size.height * 0.7,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (pageIndex) {
                  setState(() {
                    selectedIndex = pageIndex;
                  });
                },
                itemCount: OnboardingMessage.onboardingMessages.length,
                itemBuilder: (context, index) {
                  final scaling = index == selectedIndex ? 1.0 : 0.9;
                  return TweenAnimationBuilder(
                    duration: const Duration(milliseconds: 300),
                    tween: Tween(begin: scaling, end: scaling),
                    curve: Curves.easeIn,
                    builder: (context, value, child) {
                      return Transform.scale(
                        scale: value,
                        child: child!,
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          height: SizeComp.height * 0.35,
                          margin: EdgeInsets.symmetric(horizontal: fSize * 2),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(OnboardingMessage
                                  .onboardingMessages[index].image),
                            ),
                          ),
                        ),
                        SizedBox(height: fSize * 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            OnboardingMessage.onboardingMessages.length,
                            (index) {
                              final isActive = index == selectedIndex;
                              return AnimatedContainer(
                                duration: const Duration(milliseconds: 400),
                                height: fSize * 0.8,
                                width: isActive ? fSize * 2.5 : fSize * 0.8,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(fSize * 0.5),
                                  color: isActive
                                      ? AppColors.kPrimary
                                      : AppColors.kInactive,
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: fSize * 4),
                        HeaderText(
                            OnboardingMessage.onboardingMessages[index].title),
                        SizedBox(height: fSize * 2),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: fSize * 2),
                          child: Text(
                            OnboardingMessage
                                .onboardingMessages[index].description,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: fSize * 2),
              child: CustomButton(
                title: selectedIndex == 2 ? 'Get Started' : 'Next',
                onPressed: () {
                  selectedIndex == 2
                      ? Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }),
                        )
                      : pageController.animateToPage(
                          selectedIndex + 1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
