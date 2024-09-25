import 'package:flutter/material.dart';
import 'package:kapil_portfolio/config/theme/app_css.dart';
import 'package:kapil_portfolio/core/extensions/spacing.dart';

class NoView extends StatelessWidget {
  const NoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/under-construction.png",
              height: 100,
              width: 100,
            ),
            const VSpace(16),
            RichText(
              text: TextSpan(
                text: "We only support",
                style: AppCss.bodyL,
                children: [
                  TextSpan(
                    text: " \"Desktop Mode\" ",
                    style: AppCss.h6,
                  ),
                  TextSpan(
                    text: "right now.",
                    style: AppCss.bodyL,
                  ),
                ],
              ),
            ),
            const VSpace(4),
            Text(
              "We are working hard to enable mobile and tablet mode of this web app.",
              style: AppCss.bodyS,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
