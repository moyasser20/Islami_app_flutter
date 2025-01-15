import 'package:flutter/material.dart';
import 'package:islamiapp/features/layout/pages/intro_screen.dart';
import 'package:islamiapp/features/layout/pages/layout_Page.dart';
import 'package:islamiapp/features/layout/pages/quran/quran_details_view.dart';
import 'package:islamiapp/features/splash/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: splashPage.routename,
      routes: {
        splashPage.routename:(_) => splashPage(),

        layoutpage.routeName:(_) => layoutpage(),

        IntroScreen.routeName:(_) =>IntroScreen(),

        quranDetailView.routeName:(_) => quranDetailView(),




      },
    );
  }
}

