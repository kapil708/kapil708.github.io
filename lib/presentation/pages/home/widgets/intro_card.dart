import 'package:flutter/material.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/core/const/constants.dart';
import 'package:kapil_portfolio/core/extensions/spacing.dart';
import 'package:kapil_portfolio/core/model/index.dart';
import 'package:kapil_portfolio/core/utils/helper.dart';

class IntroCard extends StatelessWidget {
  const IntroCard({super.key});

  @override
  Widget build(BuildContext context) {
    double windowWidth = MediaQuery.sizeOf(context).width;
    double contentWidth = windowWidth - (AppCss.kBodyPaddingHorizontal * 2);

    return Container(
      // color: const Color(0xFFF6F3Fc),
      width: windowWidth,
      padding: EdgeInsets.only(
        left: AppCss.kBodyPaddingHorizontal,
        right: AppCss.kBodyPaddingHorizontal,
        top: AppCss.kBodyPaddingTop,
        bottom: AppCss.kBodyPaddingBottom,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            Color(0xffEBF4F5),
            Color(0xffB5C6E0),

            // Color(0xffF6C4ED),
            // Color(0xffE1DAE6),
          ], // Gradient from https://learnui.design/tools/gradient-generator.html
          tileMode: TileMode.mirror,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Welcome message & image
          Row(
            children: [
              SizedBox(
                width: contentWidth * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      IntroModel.subTitle,
                      style: AppCss.subTitle.copyWith(
                        color: CustomColors.c1,
                      ),
                      //style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const VSpace(16),
                    Text(
                      IntroModel.title,
                      style: AppCss.h1.copyWith(
                        color: CustomColors.c2,
                      ),
                      //style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const VSpace(16),
                    Text(
                      IntroModel.description,
                      style: AppCss.lead,
                      //style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const VSpace(32),
                    Row(
                      children: [
                        FilledButton(
                          onPressed: () {
                            Scrollable.ensureVisible(
                              NavigationKey.contactKey.currentContext!,
                              duration: const Duration(seconds: 1),
                            );
                          },
                          style: AppCss.buttonStyle,
                          child: Text(
                            "Hire Me!",
                            style: AppCss.body,
                          ),
                        ),
                        const HSpace(32),
                        ...IntroModel.socialLinks.map((socialLink) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: OutlinedButton(
                              onPressed: () => openUrl(socialLink['link']),
                              style: IconButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                  side: const BorderSide(color: CustomColors.primary),
                                ),
                                minimumSize: const Size(48, 48),
                              ),
                              child: Image.asset(
                                socialLink['image'],
                                height: 24,
                                width: 24,
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: contentWidth * 0.5,
                child: Image.asset(
                  IntroModel.profilePicture,
                  height: 600,
                ),
                // child: Image.network("https://themejunction.net/html/gerold/demo/assets/img/hero/me.png"),
              ),
            ],
          ),

          // Records
          const VSpace(32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...IntroModel.records.map((record) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      record['count'],
                      style: AppCss.h1.copyWith(
                        color: CustomColors.c2,
                      ),
                    ),
                    const HSpace(8),
                    Text(
                      record['title'],
                      style: AppCss.body.copyWith(
                        color: CustomColors.c2,
                      ),
                    ),
                  ],
                );
              }),
            ],
          ),

          // Trusted by
          // const VSpace(64),
          // Center(
          //   child: Text(
          //     "Some Brands We Work With",
          //     style: AppCss.h5.copyWith(
          //       color: CustomColors.c1,
          //     ),
          //   ),
          // ),
          // const VSpace(16),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Container(
          //       //padding: const EdgeInsets.only(right: 32),
          //       constraints: const BoxConstraints(
          //         maxWidth: 200,
          //         maxHeight: 100,
          //       ),
          //       child: Image.network("https://4106085.fs1.hubspotusercontent-na1.net/hub/4106085/hubfs/neu_Care%20Rockets.png"),
          //     ),
          //     Container(
          //       //padding: const EdgeInsets.only(right: 32),
          //       constraints: const BoxConstraints(
          //         maxWidth: 200,
          //         maxHeight: 100,
          //       ),
          //       child: Image.network("https://www.fastwhistle.com/assets/img/fastwhistle.png"),
          //     ),
          //     Container(
          //       //padding: const EdgeInsets.only(right: 32),
          //       constraints: const BoxConstraints(
          //         maxWidth: 200,
          //         maxHeight: 100,
          //       ),
          //       child: Image.network("https://omtapovan.org/wp-content/uploads/main_round.png"),
          //     ),
          //     Container(
          //       //padding: const EdgeInsets.only(right: 32),
          //       constraints: const BoxConstraints(
          //         maxWidth: 200,
          //         maxHeight: 100,
          //       ),
          //       child: Image.network(
          //           "https://scontent.famd5-2.fna.fbcdn.net/v/t39.30808-1/273454088_101439172467347_6173678911554987289_n.jpg?stp=dst-jpg_s480x480&_nc_cat=104&ccb=1-7&_nc_sid=f4b9fd&_nc_ohc=3J6_rR1eplcQ7kNvgHulFMi&_nc_ht=scontent.famd5-2.fna&oh=00_AYBYigKY1GUYZARpB3_G6kRRbi_SndE_yYIA3g697_4mpQ&oe=66CB4EAD"),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
