import 'package:flutter/material.dart';
import 'package:kapil_portfolio/config/theme/app_theme.dart';
import 'package:kapil_portfolio/presentation/pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kapil Singh',
      home: const HomePage(),

      /// Theming
      themeMode: ThemeMode.light,
      theme: themeData,
      darkTheme: themeData,
    );
  }
}
