import 'package:flutter/material.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/core/extensions/spacing.dart';
import 'package:kapil_portfolio/core/model/projects_model.dart';
import 'package:kapil_portfolio/core/utils/helper.dart';

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
                return GestureDetector(
                  onTap: () => projectDetailPopup(context, data),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      data['logo'],
                      height: cardWidth,
                      width: cardWidth,
                    ),
                  ),
                );
              }),
            ],
          ),
        ],
      ),
    );
  }

  projectDetailPopup(BuildContext context, Map<String, dynamic> data) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // scrollable: true,
          // title: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     const Text(""),
          //     IconButton(
          //       onPressed: () => Navigator.pop(context),
          //       icon: const Icon(Icons.close),
          //     ),
          //   ],
          // ),
          content: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              width: MediaQuery.sizeOf(context).width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          data['logo'],
                          height: 200,
                          width: 200,
                        ),
                      ),
                      const HSpace(16),
                      Expanded(
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data['title'],
                                  style: AppCss.h3,
                                ),
                                const VSpace(8),
                                Wrap(
                                  spacing: 8,
                                  runSpacing: 8,
                                  children: [
                                    ...data['techStack'].map((tech) {
                                      return Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          color: CustomColors.outline,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Text(tech),
                                      );
                                    }),
                                  ],
                                ),
                                const VSpace(16),
                                Row(
                                  children: [
                                    if (data['androidLink'] != null && data['androidLink'].toString().isNotEmpty) ...[
                                      GestureDetector(
                                        onTap: () => openUrl(data['androidLink']),
                                        child: Image.asset(
                                          "assets/images/google_play.png",
                                          width: 150,
                                        ),
                                      ),
                                      const HSpace(16),
                                    ],
                                    if (data['iOSLink'] != null && data['iOSLink'].toString().isNotEmpty) ...[
                                      GestureDetector(
                                        onTap: () => openUrl(data['iOSLink']),
                                        child: Image.asset(
                                          "assets/images/app_store.png",
                                          width: 150,
                                        ),
                                      ),
                                      const HSpace(16),
                                    ],
                                    if (data['websiteLink'] != null && data['websiteLink'].toString().isNotEmpty)
                                      GestureDetector(
                                        onTap: () => openUrl(data['websiteLink']),
                                        child: Image.asset(
                                          "assets/images/open_link.png",
                                          width: 150,
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: const Icon(Icons.close),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const VSpace(16),
                  Text(data['description']),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
