import 'package:flutter/material.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/core/extensions/spacing.dart';
import 'package:kapil_portfolio/core/model/projects_model.dart';

class ProjectsCard extends StatelessWidget {
  const ProjectsCard({super.key});

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
      decoration: const BoxDecoration(color: Color(0xFFEADBC8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ProjectsModel.title,
            style: AppCss.subTitle.copyWith(color: CustomColors.c1),
            //style: Theme.of(context).textTheme.titleLarge,
          ),
          const VSpace(16),
          Text(
            ProjectsModel.description,
            style: AppCss.bodyL,
            //style: Theme.of(context).textTheme.titleLarge,
          ),
          const VSpace(32),
          // Welcome message & image
          Wrap(
            spacing: spacing,
            runSpacing: spacing,
            children: [
              ...ProjectsModel.projectsList.map((data) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    data['logo'],
                    height: cardWidth,
                    width: cardWidth,
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
