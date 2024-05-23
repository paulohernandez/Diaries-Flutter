import 'package:flutter/material.dart';
import '../utils/styles.dart';

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
        width: 325,
        height: 45,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border(
            top: BorderSide(color: AppColors.black),
            right: BorderSide(color: AppColors.black),
            bottom: BorderSide(color: AppColors.black),
            left: BorderSide(color: AppColors.black),
          ),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 25,
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Continue with $socialMedia',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
