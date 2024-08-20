import 'package:flutter/material.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';

import '../../../../core/extensions/spacing.dart';

class StoriesCard extends StatelessWidget {
  const StoriesCard({super.key});

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
        children: [
          Text(
            "My Client's Stories",
            style: AppCss.h2.copyWith(
              color: CustomColors.c1,
            ),
          ),
          const VSpace(16),
          Text(
            "Empowering people in new a digital journey with my super services",
            style: AppCss.p,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
