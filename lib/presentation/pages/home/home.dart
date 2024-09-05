import 'package:flutter/material.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/core/const/constants.dart';
import 'package:kapil_portfolio/core/extensions/spacing.dart';
import 'package:kapil_portfolio/core/utils/helper.dart';
import 'package:kapil_portfolio/presentation/pages/home/widgets/work_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        width: MediaQuery.sizeOf(context).width * 0.5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
        ),
        child: SizedBox(
          // padding: const EdgeInsets.all(16),
          width: MediaQuery.sizeOf(context).width * 0.5,
          // height: MediaQuery.sizeOf(context).width * 0.7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.shade200,
                    ),
                  ),
                ),
                // color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                // color: Colors.grey.shade200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pran Spandan",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Image.network("https://miro.medium.com/v2/resize:fit:4800/format:webp/1*wIRL9yjwE8xg_272PVEvKQ.png"),
                        const VSpace(16),
                        const Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                          "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
                          "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
                          "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
                          "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
                          "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
                          "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
                          "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
                          "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
                          "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
                          "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
                          "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
                          "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
                          "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
                          "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
                          "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        ),
                        const VSpace(16),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => openUrl(""),
                      child: Image.asset(
                        "assets/images/app_store.png",
                        width: 150,
                      ),
                    ),
                    const HSpace(16),
                    GestureDetector(
                      onTap: () => openUrl(""),
                      child: Image.asset(
                        "assets/images/google_play.png",
                        width: 150,
                      ),
                    ),
                    const HSpace(16),
                    GestureDetector(
                      onTap: () => openUrl(""),
                      child: Image.asset(
                        "assets/images/open_link.png",
                        width: 150,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // IntroCard(key: NavigationKey.introKey),
            // ServiceCard(key: NavigationKey.serviceKey),
            RecentWork(key: NavigationKey.workKey),
            // StoriesCard(key: NavigationKey.testimonialKey),
            // ContactCard(key: NavigationKey.contactKey),
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
  }
}
