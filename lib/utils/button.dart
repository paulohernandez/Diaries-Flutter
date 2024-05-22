import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String socialMedia;

  const SocialButton({
    required this.icon,
    required this.iconColor,
    required this.socialMedia,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('hello $socialMedia');
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: 500,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border(
            top: BorderSide(color: Colors.black),
            right: BorderSide(color: Colors.black),
            bottom: BorderSide(color: Colors.black),
            left: BorderSide(color: Colors.black),
          ),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 50,
            ),
            Text(
              'Continue with $socialMedia',
              style: GoogleFonts.roboto(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
