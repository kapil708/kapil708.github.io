import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/core/model/index.dart';
import 'package:kapil_portfolio/core/utils/helper.dart';

import '../../../../core/extensions/spacing.dart';

class StoriesCard extends StatefulWidget {
  const StoriesCard({super.key});

  @override
  State<StoriesCard> createState() => _StoriesCardState();
}

class _StoriesCardState extends State<StoriesCard> {
  CarouselSliderController controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    double windowWidth = MediaQuery.sizeOf(context).width;
    double contentWidth = windowWidth - (AppCss.kBodyPaddingHorizontal * 2);

    return Container(
      color: const Color(0xFFF7F9F2),
      width: windowWidth,
      padding: EdgeInsets.only(
        top: AppCss.kBodyPaddingTop,
        bottom: AppCss.kBodyPaddingBottom,
      ),
      child: Column(
        children: [
          Text(
            TestimonialModel.title,
            style: AppCss.h2.copyWith(
              color: CustomColors.c1,
            ),
          ),
          const VSpace(16),
          Text(
            TestimonialModel.description,
            style: AppCss.bodyL,
            textAlign: TextAlign.center,
          ),
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
                ),
                items: TestimonialModel.testimonialList.map((testimonial) {
                  return Builder(
                    builder: (BuildContext context) {
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
                                        testimonial['personPhoto'],
                                        height: 48,
                                        width: 48,
                                      ),
                                      const HSpace(16),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            testimonial['personName'],
                                            style: AppCss.h6,
                                          ),
                                          const VSpace(4),
                                          Text(
                                            testimonial['personDesignation'],
                                            style: AppCss.bodyS,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const VSpace(32),
                                  AutoSizeText(
                                    '❝ ${testimonial['quote']} ❞',
                                    style: AppCss.body.copyWith(fontStyle: FontStyle.italic),
                                  ),
                                  const VSpace(32),
                                  Row(
                                    children: [
                                      if (testimonial['androidLink'] != null && testimonial['androidLink'].toString().isNotEmpty) ...[
                                        GestureDetector(
                                          onTap: () => openUrl(testimonial['androidLink']),
                                          child: Image.asset(
                                            "assets/images/app_store.png",
                                            width: 150,
                                          ),
                                        ),
                                        const HSpace(16),
                                      ],
                                      if (testimonial['iOSLink'] != null && testimonial['iOSLink'].toString().isNotEmpty) ...[
                                        GestureDetector(
                                          onTap: () => openUrl(testimonial['iOSLink']),
                                          child: Image.asset(
                                            "assets/images/google_play.png",
                                            width: 150,
                                          ),
                                        ),
                                        const HSpace(16),
                                      ],
                                      if (testimonial['websiteLink'] != null && testimonial['websiteLink'].toString().isNotEmpty)
                                        GestureDetector(
                                          onTap: () => openUrl(testimonial['websiteLink']),
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
                            const HSpace(48),
                            Image.network(
                              testimonial['productImage'],
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
