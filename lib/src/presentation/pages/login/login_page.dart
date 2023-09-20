import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/size/size.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/header_text.dart';
import '../home/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    final fSize = SizeComp.fSize;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: fSize * 6,
          horizontal: fSize * 2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderText('Welcome Back'),
            SizedBox(height: fSize),
            Text(
                'Happy to see you again. Continue where you left off by loggin in!',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(height: fSize * 4),
            const CustomTextField(
              hintText: 'Email Address',
              iconData: Icons.email,
            ),
            const CustomTextField(
                hintText: 'Password', iconData: Icons.password),
            SizedBox(height: fSize),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: fSize * 5),
            CustomButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomePage();
                      },
                    ),
                  );
                },
                title: 'Sign in'),
            SizedBox(height: fSize * 5),
            const Center(child: Text('Or')),
            SizedBox(height: fSize * 4),
            const SocialMediaCard(
              title: 'Sign in with Google',
              icon: 'assets/icons/google.svg',
            ),
            const SocialMediaCard(
              title: 'Sign in with Facebook',
              icon: 'assets/icons/facebook.svg',
            ),
            const Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: fSize * 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}

class SocialMediaCard extends StatelessWidget {
  const SocialMediaCard({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    final fSize = SizeComp.fSize;

    return Container(
      margin: EdgeInsets.only(bottom: fSize * 2),
      padding: EdgeInsets.all(fSize),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(fSize),
        border: Border.all(),
      ),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
