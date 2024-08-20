import 'package:flutter/cupertino.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/core/extensions/spacing.dart';

class RecentWork extends StatelessWidget {
  const RecentWork({super.key});

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
            "My Recent Works",
            style: AppCss.h2.copyWith(
              color: CustomColors.c1,
            ),
          ),
          const VSpace(16),
          Text(
            "We put your ideas and thus your wishes in the form of a unique web project "
            "\nthat inspires you and you customers.",
            style: AppCss.p,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
