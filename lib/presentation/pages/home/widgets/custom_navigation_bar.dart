import 'package:flutter/material.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/core/const/constants.dart';
import 'package:kapil_portfolio/core/extensions/spacing.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  void scrollToWidget(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: CustomColors.c1,
        borderRadius: BorderRadius.circular(180),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            // onTap: () => Scrollable.ensureVisible(
            //   NavigationKey.introKey.currentContext!,
            //   duration: const Duration(seconds: 1),
            // ),
            onTap: () => scrollToWidget(NavigationKey.introKey),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(180),
                color: CustomColors.c2,
              ),
              child: const Icon(Icons.arrow_upward, color: Colors.white),
            ),
          ),
          const HSpace(16),
          TextButton(
            // onPressed: () => Scrollable.ensureVisible(
            //   NavigationKey.aboutKey.currentContext!,
            //   duration: const Duration(seconds: 1),
            // ),
            onPressed: () => scrollToWidget(NavigationKey.aboutKey),
            child: Text(
              "About Me",
              style: AppCss.body.copyWith(color: Colors.white),
            ),
          ),
          const HSpace(16),
          TextButton(
            // onPressed: () => Scrollable.ensureVisible(
            //   NavigationKey.skillsKey.currentContext!,
            //   duration: const Duration(seconds: 1),
            // ),
            onPressed: () => scrollToWidget(NavigationKey.skillsKey),
            child: Text(
              "Skills",
              style: AppCss.body.copyWith(color: Colors.white),
            ),
          ),
          const HSpace(16),
          TextButton(
            // onPressed: () => Scrollable.ensureVisible(
            //   NavigationKey.serviceKey.currentContext!,
            //   duration: const Duration(seconds: 1),
            // ),
            onPressed: () => scrollToWidget(NavigationKey.serviceKey),
            child: Text(
              "Services",
              style: AppCss.body.copyWith(color: Colors.white),
            ),
          ),
          const HSpace(16),
          TextButton(
            // onPressed: () => Scrollable.ensureVisible(
            //   NavigationKey.projectKey.currentContext!,
            //   duration: const Duration(seconds: 1),
            // ),
            onPressed: () => scrollToWidget(NavigationKey.projectKey),
            child: Text(
              "Projects",
              style: AppCss.body.copyWith(color: Colors.white),
            ),
          ),
          const HSpace(16),
          TextButton(
            // onPressed: () => Scrollable.ensureVisible(
            //   NavigationKey.contactKey.currentContext!,
            //   duration: const Duration(seconds: 1),
            // ),
            onPressed: () => scrollToWidget(NavigationKey.contactKey),
            child: Text(
              "Contact Us",
              style: AppCss.body.copyWith(color: Colors.white),
            ),
          ),
          const HSpace(16),
        ],
      ),
    );
  }
}
