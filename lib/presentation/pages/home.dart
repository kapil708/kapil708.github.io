import 'package:flutter/material.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/core/extensions/spacing.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double contentWidth = MediaQuery.sizeOf(context).width - (AppCss.kBodyPaddingHorizontal * 2);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                      ],
                    ),
                  ),
                  SizedBox(
                    width: contentWidth * 0.5,
                    child: Image.network("https://themejunction.net/html/gerold/demo/assets/img/hero/me.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
