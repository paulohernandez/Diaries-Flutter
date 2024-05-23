import 'package:flutter/material.dart';
import '../customWidget/button.dart';
import '../utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpButtons extends StatelessWidget {
  const SignUpButtons({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialButton(
          icon: FontAwesomeIcons.google,
          iconColor: AppColors.primary,
          socialMedia: 'Google',
        ),
        SocialButton(
          icon: Icons.facebook_sharp,
          iconColor: Color.fromRGBO(49, 111, 246, 1),
          socialMedia: 'Facebook',
        ),
        SocialButton(
          icon: Icons.apple,
          iconColor: Color.fromRGBO(43, 43, 48, 1),
          socialMedia: 'Apple',
        ),
        SocialButton(
          icon: Icons.email,
          iconColor: Color.fromRGBO(108, 108, 112, 1),
          socialMedia: 'Email',
        ),
      ],
    );
  }
}
