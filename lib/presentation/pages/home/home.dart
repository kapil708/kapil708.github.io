import 'package:flutter/material.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/service_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // const IntroCard(),
            const ServiceCard(),
            // const RecentWork(),
            // const StoriesCard(),
            // const BlogCard(),
            // ContactCard(),
          ],
        ),
      ),
    );
  }
}
