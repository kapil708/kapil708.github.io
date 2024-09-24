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
    double windowHeight = MediaQuery.sizeOf(context).height;
    double contentWidth = windowWidth - (AppCss.kBodyPaddingHorizontal * 2);

    return Stack(
      children: [
        Container(
          // color: const Color(0xFFF6F3Fc),
          width: windowWidth,
          // height: windowHeight,
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Basic Info
              SizedBox(
                width: contentWidth * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                            "👨‍💻 Hire Me Now",
                            style: AppCss.bodyL,
                          ),
                        ),
                        const HSpace(16),
                        FilledButton(
                          onPressed: () => openUrl(IntroModel.calendlyLink),
                          style: AppCss.buttonStyle.copyWith(
                            backgroundColor: WidgetStateProperty.all(Colors.black),
                          ),
                          child: Text(
                            "🗓️ Schedule A Call",
                            style: AppCss.bodyL,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Image
              SizedBox(
                width: contentWidth * 0.5,
                child: Center(
                  child: Image.asset(
                    IntroModel.profilePictureSquare,
                    width: contentWidth * 0.4,
                    height: contentWidth * 0.4,
                    // fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),

        //Badge
        Positioned(
          right: AppCss.kBodyPaddingHorizontal / 2,
          top: 0,
          child: Image.asset(
            "assets/images/build_with_flutter.png",
            height: 120,
            // width: 24,
          ),
        ),
      ],
    );
  }
}
