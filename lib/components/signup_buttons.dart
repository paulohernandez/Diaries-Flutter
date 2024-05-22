import 'package:flutter/material.dart';
import '../customWidget/button.dart';

class SignUpButtons extends StatelessWidget {
  const SignUpButtons({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialButton(
          icon: Icons.mail,
          iconColor: Color.fromRGBO(49, 111, 246, 1),
          socialMedia: 'Google',
        ),
        SocialButton(
          icon: Icons.facebook_sharp,
          iconColor: Color.fromRGBO(49, 111, 246, 1),
          socialMedia: 'Facebook',
        ),
        SocialButton(
          icon: Icons.apple,
          iconColor: Color.fromRGBO(108, 108, 112, 1),
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
