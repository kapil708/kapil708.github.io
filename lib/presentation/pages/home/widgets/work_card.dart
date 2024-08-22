import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/core/extensions/spacing.dart';
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
            "Our Success Stories",
            style: AppCss.h2.copyWith(
              color: CustomColors.c1,
            ),
          ),
          const VSpace(16),
          Text(
            "Explore our recent client success stories and "
            "\nwitness our full 360 transformations come to life",
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
            itemCount: items.length,
            itemBuilder: (context, index) {
              String image = items[index];

              return ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Stack(
                  children: [
                    // Image
                    Image.network(image),

                    // Description
                    Positioned(
                      bottom: 0,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            openUrl("https://play.google.com/store/games?hl=en-IN");
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
                                      "Pran Spandan",
                                      style: AppCss.h7.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Icon(Icons.double_arrow, color: Colors.white),
                                  ],
                                ),
                                const VSpace(4),
                                Text(
                                  "Mobile application build for Android & iOS",
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
