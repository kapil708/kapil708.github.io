import 'package:flutter/material.dart';
import 'package:kapil_portfolio/core/extensions/textstyle_extensions.dart';

class AppCss {
  static TextStyle sora = const TextStyle(
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    fontFamily: "Sora",
  );

  static double get kBodyPaddingHorizontal => 70;
  static double get kBodyPaddingTop => 50;
  static double get kBodyPaddingBottom => 50;
  static double get kContentPadding => 12;

  static TextStyle get h1 => sora.semiBold.size(65).textHeight(1.2);
  static TextStyle get h2 => sora.semiBold.size(45).textHeight(1.2);
  static TextStyle get h3 => sora.semiBold.size(30).textHeight(1.2);
  static TextStyle get h4 => sora.semiBold.size(24).textHeight(1.2);
  static TextStyle get h5 => sora.semiBold.size(22).textHeight(1.2);
  static TextStyle get h6 => sora.semiBold.size(18).textHeight(1.2);

  static TextStyle get lead => sora.semiBold.size(20);
  static TextStyle get subTitle => sora.semiBold.size(36);

  static TextStyle get body => sora.size(16).textHeight(1.30);
  static TextStyle get bodyS => sora.size(14).textHeight(1.30);
  static TextStyle get bodyXS => sora.size(12).textHeight(1.30);

  static TextStyle get btn => sora.size(15).textHeight(1.30);
  static TextStyle get p => sora.size(18).textHeight(1.30);
}
