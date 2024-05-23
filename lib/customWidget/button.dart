import 'package:flutter/material.dart';
import '../utils/styles.dart';

class SocialButton extends StatelessWidget {
  final String icon;
  final String socialMedia;

  const SocialButton({
    required this.icon,
    required this.socialMedia,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        print('hello $socialMedia');
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: 350,
        height: 43,
        padding: EdgeInsets.only(top: 2, right: 8, bottom: 2, left: 8),
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
            Image.asset(
              icon,
              width: 22,
              height: 22,
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Continue with $socialMedia',
                  style: theme.textTheme.labelLarge,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
