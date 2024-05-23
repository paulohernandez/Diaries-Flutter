import 'package:flutter/material.dart';
import '../customWidget/button.dart';

class SignUpButtons extends StatelessWidget {
  const SignUpButtons({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialButton(
          icon: 'images/search.png',
          socialMedia: 'Google',
        ),
        SocialButton(
          icon: 'images/facebook.png',
          socialMedia: 'Facebook',
        ),
        SocialButton(
          icon: 'images/apple-logo.png',
          socialMedia: 'Apple',
        ),
        SocialButton(
          icon: 'images/email.png',
          socialMedia: 'Email',
        ),
      ],
    );
  }
}
