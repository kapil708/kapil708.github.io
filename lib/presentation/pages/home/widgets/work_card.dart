import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/core/extensions/spacing.dart';
import 'package:kapil_portfolio/core/model/index.dart';
import 'package:kapil_portfolio/core/utils/helper.dart';

class RecentWork extends StatelessWidget {
  const RecentWork({super.key});

  @override
  Widget build(BuildContext context) {
    double windowWidth = MediaQuery.sizeOf(context).width;
    double contentWidth = windowWidth - (AppCss.kBodyPaddingHorizontal * 2);
    double cardWidth = (contentWidth - 36) / 3;

    List<String> items = [
      'https://themejunction.net/html/gerold/demo/assets/img/portfolio/2.jpg',
      'https://preview.codeless.co/converta/default/wp-content/uploads/elementor/thumbs/portfolio-0021-min-q2okalu3k4bdd90gr0ub8uiep3zjut7ilyt9o1mc3o.jpeg',
      'https://preview.codeless.co/converta/default/wp-content/uploads/elementor/thumbs/portfolio-001-min-q2okaj0nfbr8p8rgd5zupb8q7xwazgde671hh3n0lg.jpeg',
      'https://preview.codeless.co/converta/default/wp-content/uploads/elementor/thumbs/portfolio-003-min-q2okaonm4mf8c2wdak26ybssh9lnhwipmcrq3vi5l0.jpeg',
      'https://preview.codeless.co/converta/default/wp-content/uploads/elementor/thumbs/portfolio-0004-min-q2okarh74u2tlqf5zrnhtr3vkeqlwqaz7cwuslah1g.jpeg',
      'https://kylo.bold-themes.com/boldbuilder-demo/wp-content/uploads/sites/2/2023/09/portfolio_10-900x1200.jpg',
      'https://kylo.bold-themes.com/boldbuilder-demo/wp-content/uploads/sites/2/2024/05/portfolio-11-900x1200.jpg',
      'https://themejunction.net/html/gerold/demo/assets/img/portfolio/4.jpg',
    ];

    return Container(
      color: const Color(0xFFFFEFEF),
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
            WorkModel.title,
            style: AppCss.h2.copyWith(
              color: CustomColors.c1,
            ),
          ),
          const VSpace(16),
          Text(
            WorkModel.description,
            style: AppCss.bodyL,
            textAlign: TextAlign.center,
          ),
          const VSpace(32),
          MasonryGridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 18,
            crossAxisSpacing: 18,
            padding: const EdgeInsets.only(bottom: 100),
            itemCount: WorkModel.workList.length,
            itemBuilder: (context, index) {
              Map<String, dynamic> work = WorkModel.workList[index];

              return ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Stack(
                  children: [
                    // Image
                    Image.network(work['image']),

                    // Description
                    Positioned(
                      bottom: 0,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            // openUrl(work['link']);
                            Scaffold.of(context).openEndDrawer();
                            return;

                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  scrollable: true,
                                  title: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Pran Spandan"),
                                      IconButton(
                                        onPressed: () => Navigator.pop(context),
                                        icon: const Icon(Icons.close),
                                      ),
                                    ],
                                  ),
                                  content: Container(
                                    padding: const EdgeInsets.all(8.0),
                                    width: MediaQuery.sizeOf(context).width * 0.5,
                                    // height: MediaQuery.sizeOf(context).width * 0.7,
                                    child: Column(
                                      children: [
                                        Image.network("https://miro.medium.com/v2/resize:fit:4800/format:webp/1*wIRL9yjwE8xg_272PVEvKQ.png"),
                                        const VSpace(16),
                                        const Text(
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                                          "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
                                          "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                        ),
                                        const VSpace(16),
                                        Row(
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
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            //margin: const EdgeInsets.all(8),
                            width: cardWidth,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white54, width: 2),
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.black54,
                              // color: CustomColors.c2.withOpacity(0.8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      work['title'],
                                      style: AppCss.h7.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Icon(Icons.double_arrow, color: Colors.white),
                                  ],
                                ),
                                const VSpace(4),
                                Text(
                                  work['description'],
                                  style: AppCss.bodyXS.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
