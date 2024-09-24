import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/core/extensions/spacing.dart';
import 'package:kapil_portfolio/core/model/skill_model.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key});

  @override
  Widget build(BuildContext context) {
    double windowWidth = MediaQuery.sizeOf(context).width;
    int itemPerRow = 5;
    double spacing = 32;
    double cardWidth = (windowWidth - (AppCss.kBodyPaddingHorizontal * 2) - ((itemPerRow - 1) * 32)) / itemPerRow;

    return Container(
      width: windowWidth,
      padding: EdgeInsets.only(
        left: AppCss.kBodyPaddingHorizontal,
        right: AppCss.kBodyPaddingHorizontal,
        top: AppCss.kBodyPaddingTop,
        bottom: AppCss.kBodyPaddingBottom,
      ),
      decoration: const BoxDecoration(color: Color(0xFFFAEDCE)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            SkillModel.title,
            style: AppCss.subTitle.copyWith(color: CustomColors.c1),
            //style: Theme.of(context).textTheme.titleLarge,
          ),
          const VSpace(16),
          Text(
            SkillModel.description,
            style: AppCss.bodyL,
            //style: Theme.of(context).textTheme.titleLarge,
          ),
          // const VSpace(16),
          // // Welcome message & image
          // Wrap(
          //   // crossAxisAlignment: CrossAxisAlignment.start,
          //   spacing: 16,
          //   runSpacing: 16,
          //   children: [
          //     ...SkillModel.skillList.map((data) {
          //       return Container(
          //         height: 120,
          //         width: 120,
          //         decoration: BoxDecoration(
          //           color: Colors.white54,
          //           borderRadius: BorderRadius.circular(8),
          //         ),
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             SvgPicture.asset(
          //               data['image'],
          //               height: 48,
          //               width: 48,
          //             ),
          //             const VSpace(8),
          //             Text(
          //               data['title'],
          //               style: AppCss.lead,
          //             ),
          //           ],
          //         ),
          //       );
          //     }),
          //   ],
          // ),

          const VSpace(64),
          Wrap(
            spacing: spacing,
            runSpacing: spacing,
            children: [
              ...SkillModel.skillList.map((data) {
                return Container(
                  height: 80,
                  width: cardWidth,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        data['image'],
                        height: 48,
                        width: 48,
                      ),
                      const HSpace(8),
                      Text(
                        data['title'],
                        style: AppCss.lead,
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ],
      ),
    );
  }
}
