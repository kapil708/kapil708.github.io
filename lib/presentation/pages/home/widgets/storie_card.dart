import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';

import '../../../../core/extensions/spacing.dart';

class StoriesCard extends StatefulWidget {
  const StoriesCard({super.key});

  @override
  State<StoriesCard> createState() => _StoriesCardState();
}

class _StoriesCardState extends State<StoriesCard> {
  CarouselSliderController controller = CarouselSliderController();
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    double windowWidth = MediaQuery.sizeOf(context).width;
    double contentWidth = windowWidth - (AppCss.kBodyPaddingHorizontal * 2);
    List testimonialList = [1, 2, 3, 4, 5];

    return Container(
      color: const Color(0xFFF7F9F2),
      width: windowWidth,
      padding: EdgeInsets.only(
        // left: AppCss.kBodyPaddingHorizontal,
        // right: AppCss.kBodyPaddingHorizontal,
        top: AppCss.kBodyPaddingTop,
        bottom: AppCss.kBodyPaddingBottom,
      ),
      child: Column(
        children: [
          Text(
            "Trusted by Leading Organisations",
            style: AppCss.h2.copyWith(
              color: CustomColors.c1,
            ),
          ),
          const VSpace(16),
          Text(
            "Empowering people in new a digital journey with my super services",
            style: AppCss.bodyL,
            textAlign: TextAlign.center,
          ),
          const VSpace(32),
          // Container(
          //   padding: const EdgeInsets.all(32),
          //   decoration: BoxDecoration(
          //     color: const Color(0XFFDFE8C0),
          //     borderRadius: BorderRadius.circular(48),
          //   ),
          //   width: contentWidth * 0.8,
          //   child: Row(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Expanded(
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.start,
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Row(
          //               children: [
          //                 Image.network(
          //                   "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
          //                   height: 48,
          //                   width: 48,
          //                 ),
          //                 const HSpace(16),
          //                 Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     Text(
          //                       "Abhijit Bhumkar",
          //                       style: AppCss.h6,
          //                     ),
          //                     const VSpace(4),
          //                     Text(
          //                       "Sadhak at Om Tapovan Ashram",
          //                       style: AppCss.bodyS,
          //                     ),
          //                   ],
          //                 ),
          //               ],
          //             ),
          //             const VSpace(32),
          //             Text(
          //               "❝ I was seeking to develop an app for our Guruvar, a concept that was entirely new and did not align with any existing apps on the market. Our user base ranged from 60-year-olds to the millennial generation, so the app needed to be both easy to use for older adults and exciting for the younger crowd. That's when I partnered with Aditya Technologies."
          //               "\n\nThe app they developed is user-friendly, visually appealing, and has greatly enhanced our community's practices. Their professionalism and dedication were outstanding. I highly recommend Aditya Technologies! ❞",
          //               style: AppCss.body.copyWith(
          //                 fontStyle: FontStyle.italic,
          //               ),
          //             ),
          //             const VSpace(32),
          //             Row(
          //               children: [
          //                 Image.asset(
          //                   "assets/images/app_store.png",
          //                   width: 200,
          //                 ),
          //                 Image.asset(
          //                   "assets/images/google_play_store.png",
          //                   width: 200,
          //                 ),
          //               ],
          //             ),
          //           ],
          //         ),
          //       ),
          //       const HSpace(48),
          //       Image.network(
          //         "https://play-lh.googleusercontent.com/QR2fKQGkW7p1Yu7HJTE5gLgj0JpJc5l5rHI5vl8X4ms5c7V-OpezS2l2qeCcZa8H9qM=w5120-h2880-rw",
          //         width: 231,
          //         // height: 231,
          //       ),
          //     ],
          //   ),
          // ),
          const VSpace(32),
          Stack(
            alignment: Alignment.center,
            children: [
              CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(
                  autoPlay: false,
                  scrollPhysics: const NeverScrollableScrollPhysics(),
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 16 / 9,
                  initialPage: 2,
                  height: 520,
                  // onPageChanged: (index, v) => setState(() {
                  //   currentIndex = index;
                  // }),
                ),
                items: testimonialList.map((i) {
                  int index = testimonialList.indexOf(i);

                  return Builder(
                    builder: (BuildContext context) {
                      String quote =
                          "I was seeking to develop an app for our Guruvar, a concept that was entirely new and did not align with any existing apps on the market. Our user base ranged from 60-year-olds to the millennial generation, so the app needed to be both easy to use for older adults and exciting for the younger crowd. That's when I partnered with Aditya Technologies."
                          "\n\nThe app they developed is user-friendly, visually appealing, and has greatly enhanced our community's practices. Their professionalism and dedication were outstanding. I highly recommend Aditya Technologies!";

                      return Container(
                        padding: const EdgeInsets.all(32),
                        decoration: BoxDecoration(
                          color: const Color(0XFFD8EFD3),
                          borderRadius: BorderRadius.circular(48),
                        ),
                        width: contentWidth * 0.8,
                        constraints: const BoxConstraints(
                          maxHeight: 400,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.network(
                                        "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                                        height: 48,
                                        width: 48,
                                      ),
                                      const HSpace(16),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Abhijit Bhumkar",
                                            style: AppCss.h6,
                                          ),
                                          const VSpace(4),
                                          Text(
                                            "Sadhak at Om Tapovan Ashram",
                                            style: AppCss.bodyS,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const VSpace(32),
                                  AutoSizeText(
                                    '❝ $quote ❞',
                                    style: AppCss.body.copyWith(fontStyle: FontStyle.italic),
                                    // '❝ ${quote.substring(0, index == currentIndex ? quote.length : 200)} ❞',
                                    // maxLines: 100,
                                    // maxFontSize: 16,
                                    // minFontSize: 14,
                                    // overflow: TextOverflow.ellipsis,
                                  ),
                                  const VSpace(32),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/app_store.png",
                                        width: 200,
                                      ),
                                      Image.asset(
                                        "assets/images/google_play_store.png",
                                        width: 200,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const HSpace(48),
                            Image.network(
                              "https://w7.pngwing.com/pngs/834/255/png-transparent-ui-ux-web-app-design-mobile-responsive-layout-icon.png",
                              width: 231,
                              // height: 231,
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),

              // Navigation
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => controller.previousPage(duration: const Duration(seconds: 1)),
                      icon: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color(0xFF30312c),
                          borderRadius: BorderRadius.circular(180),
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 64,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () => controller.nextPage(duration: const Duration(seconds: 1)),
                      icon: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color(0xFF30312c),
                          borderRadius: BorderRadius.circular(180),
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 64,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
