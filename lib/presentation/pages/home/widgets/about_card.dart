import 'package:flutter/material.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/core/extensions/spacing.dart';
import 'package:kapil_portfolio/core/model/about_model.dart';
import 'package:kapil_portfolio/core/utils/helper.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    double windowWidth = MediaQuery.sizeOf(context).width;
    double contentWidth = windowWidth - (AppCss.kBodyPaddingHorizontal * 2);

    return Container(
      width: windowWidth,
      padding: EdgeInsets.only(
        left: AppCss.kBodyPaddingHorizontal,
        right: AppCss.kBodyPaddingHorizontal,
        top: AppCss.kBodyPaddingTop,
        bottom: AppCss.kBodyPaddingBottom,
      ),
      decoration: const BoxDecoration(color: Color(0xFFF5EFFF)),
      child: Row(
        children: [
          SizedBox(
            width: contentWidth * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...AboutModel.records.map((record) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    margin: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      color: Color(record['color']),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          record['count'],
                          style: AppCss.h1.copyWith(
                            color: CustomColors.white,
                          ),
                        ),
                        const HSpace(8),
                        Text(
                          record['title'],
                          style: AppCss.body.copyWith(
                            color: CustomColors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                const VSpace(32),
                Row(
                  children: [
                    ...AboutModel.socialLinks.map((socialLink) {
                      return IconButton(
                        onPressed: () => openUrl(socialLink['link']),
                        style: IconButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        icon: Image.network(
                          socialLink['image'],
                          height: 48,
                          width: 48,
                        ),
                      );
                    }),
                  ],
                ),
              ],
            ),
          ),
          // const HSpace(64),
          SizedBox(
            width: contentWidth * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AboutModel.title,
                  style: AppCss.subTitle.copyWith(
                    color: CustomColors.c1,
                  ),
                  //style: Theme.of(context).textTheme.titleLarge,
                ),
                const VSpace(16),
                Text(
                  AboutModel.description,
                  style: AppCss.body,
                  //style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
