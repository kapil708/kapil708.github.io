import 'package:flutter/material.dart';
import 'package:kapil_portfolio/core/const/constants.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/about_card.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/contact_card.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/custom_navigation_bar.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/intro_card.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/services_card.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/skills_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            IntroCard(key: NavigationKey.introKey),
            AboutCard(key: NavigationKey.aboutKey),
            SkillsCard(key: NavigationKey.skillsKey),
            ServicesCard(key: NavigationKey.serviceKey),
            // ProjectsCard(key: NavigationKey.projectKey),
            ContactCard(key: NavigationKey.contactKey),

            // TODO(Kapil) : Will add this blocs later
            // StoriesCard(key: NavigationKey.testimonialKey),
            // const BlogCard(),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const CustomNavigationBar(),
    );
  }
}
