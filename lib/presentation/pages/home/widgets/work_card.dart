import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/core/extensions/spacing.dart';
import 'package:kapil_portfolio/core/model/index.dart';
import 'package:kapil_portfolio/core/utils/helper.dart';

class RecentWork extends StatelessWidget {
  const RecentWork({super.key});

  String icon(String type) {
    switch (type) {
      case 'android':
        return 'assets/images/icons/android.png';
      case 'iOS':
        return 'assets/images/icons/ios.png';
      case 'restAPI':
        return 'assets/images/icons/api.png';
      case 'firebase':
        return 'assets/images/icons/firebase.png';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    double windowWidth = MediaQuery.sizeOf(context).width;
    double contentWidth = windowWidth - (AppCss.kBodyPaddingHorizontal * 2);
    double cardWidth = (contentWidth - 36) / 3;

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
              List<String> techStack = work['techStack'];

              return ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Stack(
                  children: [
                    // Image
                    Image.network(work['thumbImage']),

                    // Description
                    Positioned(
                      bottom: 0,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () => workDetailPopup(context, work),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            //margin: const EdgeInsets.all(8),
                            width: cardWidth,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white54, width: 2),
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.black87,
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
                                Wrap(
                                  spacing: 4,
                                  children: [
                                    ...techStack.map((t) {
                                      return Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        child: Image.asset(
                                          icon(t),
                                          height: 18,
                                          width: 18,
                                        ),
                                      );
                                    }),
                                  ],
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

  workDetailPopup(BuildContext context, Map<String, dynamic> data) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // scrollable: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(data['title']),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              width: MediaQuery.sizeOf(context).width * 0.5,
              // height: MediaQuery.sizeOf(context).width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(data['image']),
                  const VSpace(16),
                  Text(data['description']),
                  const VSpace(16),
                  Row(
                    children: [
                      if (data['androidLink'] != null && data['androidLink'].toString().isNotEmpty) ...[
                        GestureDetector(
                          onTap: () => openUrl(data['androidLink']),
                          child: Image.asset(
                            "assets/images/app_store.png",
                            width: 150,
                          ),
                        ),
                        const HSpace(16),
                      ],
                      if (data['iOSLink'] != null && data['iOSLink'].toString().isNotEmpty) ...[
                        GestureDetector(
                          onTap: () => openUrl(data['iOSLink']),
                          child: Image.asset(
                            "assets/images/google_play.png",
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
            ),
          ),
        );
      },
    );
  }
}
