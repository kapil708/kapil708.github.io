import 'package:flutter/material.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/blog_card.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/contact_card.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/intro_card.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/service_card.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/skill_card.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/storie_card.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/work_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            IntroCard(),
            ServiceCard(),
            RecentWork(),
            SkillCard(),
            StoriesCard(),
            BlogCard(),
            ContactCard(),
          ],
        ),
      ),
    );
  }
}
