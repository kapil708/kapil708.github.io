import 'package:flutter/material.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/core/extensions/spacing.dart';
import 'package:kapil_portfolio/core/model/index.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    double windowWidth = MediaQuery.sizeOf(context).width;
    double contentWidth = windowWidth - (AppCss.kBodyPaddingHorizontal * 2);

    return Container(
      color: const Color(0xFFFFFFFF),
      // color: const Color(0xFFF6F3Fc),
      width: windowWidth,
      padding: EdgeInsets.only(
        left: AppCss.kBodyPaddingHorizontal,
        right: AppCss.kBodyPaddingHorizontal,
        top: AppCss.kBodyPaddingTop,
        bottom: AppCss.kBodyPaddingBottom,
      ),
      child: Column(
        children: [
          // Intro of service
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  ServiceModel.title,
                  style: AppCss.h1.copyWith(
                    color: CustomColors.c1,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Image.network(ServiceModel.serviceImage),
              ),
            ],
          ),
          const VSpace(32),
          Text(
            ServiceModel.description,
            style: AppCss.bodyL,
            textAlign: TextAlign.center,
          ),
          const VSpace(64),

          // Wrap(
          //   spacing: 16,
          //   children: [
          //     ...ServiceModel.serviceList.map((service) {
          //       return Container(
          //         width: (contentWidth - 48) / 4,
          //         padding: const EdgeInsets.all(16),
          //         //margin: const EdgeInsets.all(8),
          //         color: Colors.grey.shade200,
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Image.network(
          //               service['image'],
          //               // width: 200,
          //             ),
          //             const VSpace(16),
          //             Text(
          //               service['title'],
          //               style: AppCss.h7.copyWith(
          //                 color: CustomColors.c1,
          //               ),
          //             ),
          //             const VSpace(16),
          //             Text(
          //               service['subTitle'],
          //               style: AppCss.h4.copyWith(
          //                 color: CustomColors.c1,
          //               ),
          //             ),
          //           ],
          //         ),
          //       );
          //     }),
          //   ],
          // ),

          // Service
          ...ServiceModel.serviceList.map((service) {
            int index = ServiceModel.serviceList.indexWhere((s) => s['title'] == service['title']);
            print(index);
            return Row(
              children: [
                if (index % 2 == 0) ...[
                  Expanded(
                    flex: 1,
                    child: Image.network(service['image']),
                  ),
                  const HSpace(140),
                ],
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        service['title'],
                        style: AppCss.h4.copyWith(
                          color: CustomColors.c1,
                        ),
                      ),
                      const VSpace(16),
                      Text(
                        service['subTitle'],
                        style: AppCss.h2.copyWith(
                          color: CustomColors.c1,
                        ),
                      ),
                      const VSpace(16),
                      Text(
                        service['description'],
                        style: AppCss.body,
                      ),
                    ],
                  ),
                ),
                if (index % 2 == 1) ...[
                  const HSpace(140),
                  Expanded(
                    flex: 1,
                    child: Image.network(service['image']),
                  ),
                ],
              ],
            );
          }),
        ],
      ),
    );
  }
}
