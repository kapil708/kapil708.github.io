import 'package:flutter/material.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/core/extensions/spacing.dart';
import 'package:kapil_portfolio/core/utils/helper.dart';

class IntroCard extends StatelessWidget {
  const IntroCard({super.key});

  @override
  Widget build(BuildContext context) {
    double windowWidth = MediaQuery.sizeOf(context).width;
    double contentWidth = windowWidth - (AppCss.kBodyPaddingHorizontal * 2);

    return Container(
      color: const Color(0xFFFFFFFF),
      width: windowWidth,
      padding: EdgeInsets.only(
        left: AppCss.kBodyPaddingHorizontal,
        right: AppCss.kBodyPaddingHorizontal,
        top: AppCss.kBodyPaddingTop,
        bottom: AppCss.kBodyPaddingBottom,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: contentWidth * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "I am Kapil",
                      style: AppCss.subTitle.copyWith(
                        color: CustomColors.c1,
                      ),
                      //style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const VSpace(16),
                    Text(
                      "Mobile App \nDeveloper",
                      style: AppCss.h1.copyWith(
                        color: CustomColors.c2,
                      ),
                      //style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const VSpace(16),
                    Text(
                      "I break down complex user experinece problems to "
                      "create integritiy focussed solutions that connect "
                      "billions of people",
                      style: AppCss.lead,
                      //style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const VSpace(32),
                    Row(
                      children: [
                        FilledButton(
                          onPressed: () {},
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 17),
                          ),
                          child: Text(
                            "Hire Me!",
                            style: AppCss.btn,
                          ),
                        ),
                        const HSpace(32),
                        OutlinedButton(
                          onPressed: () => openUrl('https://www.linkedin.com/in/kapilrsingh'),
                          style: IconButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                              side: const BorderSide(color: CustomColors.primary),
                            ),
                            minimumSize: const Size(48, 48),
                          ),
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/3128/3128219.png",
                            height: 24,
                            width: 24,
                          ),
                        ),
                        const HSpace(16),
                        OutlinedButton(
                          onPressed: () => openUrl('https://github.com/kapil708'),
                          style: IconButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                              side: const BorderSide(color: CustomColors.primary),
                            ),
                            minimumSize: const Size(48, 48),
                          ),
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/2111/2111432.png",
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: contentWidth * 0.5,
                child: Image.network("https://themejunction.net/html/gerold/demo/assets/img/hero/me.png"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "09+",
                    style: AppCss.h1.copyWith(
                      color: CustomColors.c2,
                    ),
                  ),
                  const HSpace(8),
                  Text(
                    "Years of \nExperience",
                    style: AppCss.body.copyWith(
                      color: CustomColors.c2,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "50+",
                    style: AppCss.h1.copyWith(
                      color: CustomColors.c2,
                    ),
                  ),
                  const HSpace(8),
                  Text(
                    "Project \nCompleted",
                    style: AppCss.body.copyWith(
                      color: CustomColors.c2,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "10+",
                    style: AppCss.h1.copyWith(
                      color: CustomColors.c2,
                    ),
                  ),
                  const HSpace(8),
                  Text(
                    "Happy \Clients",
                    style: AppCss.body.copyWith(
                      color: CustomColors.c2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
