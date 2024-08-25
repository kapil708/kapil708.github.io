import 'package:flutter/material.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/core/const/constants.dart';
import 'package:kapil_portfolio/core/extensions/spacing.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/blog_card.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/contact_card.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/intro_card.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/service_card.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/storie_card.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/work_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            IntroCard(key: NavigationKey.introKey),
            ServiceCard(key: NavigationKey.serviceKey),
            RecentWork(key: NavigationKey.workKey),
            StoriesCard(key: NavigationKey.testimonialKey),
            ContactCard(key: NavigationKey.contactKey),
            // const BlogCard(),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: CustomColors.c1,
          borderRadius: BorderRadius.circular(180),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () => Scrollable.ensureVisible(
                NavigationKey.introKey.currentContext!,
                duration: const Duration(seconds: 1),
              ),
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
              onPressed: () => Scrollable.ensureVisible(
                NavigationKey.serviceKey.currentContext!,
                duration: const Duration(seconds: 1),
              ),
              child: Text(
                "Services",
                style: AppCss.body.copyWith(color: Colors.white),
              ),
            ),
            const HSpace(16),
            TextButton(
              onPressed: () => Scrollable.ensureVisible(
                NavigationKey.workKey.currentContext!,
                duration: const Duration(seconds: 1),
              ),
              child: Text(
                "Success Stories",
                style: AppCss.body.copyWith(color: Colors.white),
              ),
            ),
            const HSpace(16),
            TextButton(
              onPressed: () => Scrollable.ensureVisible(
                NavigationKey.testimonialKey.currentContext!,
                duration: const Duration(seconds: 1),
              ),
              child: Text(
                "Testimonials",
                style: AppCss.body.copyWith(color: Colors.white),
              ),
            ),
            const HSpace(16),
            TextButton(
              onPressed: () => Scrollable.ensureVisible(
                NavigationKey.contactKey.currentContext!,
                duration: const Duration(seconds: 1),
              ),
              child: Text(
                "Contact Us",
                style: AppCss.body.copyWith(color: Colors.white),
              ),
            ),
            const HSpace(16),
          ],
        ),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const IntroCard(),
            const ServiceCard(),
            const RecentWork(),
            StoriesCard(),
            const BlogCard(),
            ContactCard(),
          ],
        ),
      ),
    );
  }
}
