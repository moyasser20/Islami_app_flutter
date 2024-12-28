import 'package:flutter/material.dart';
import 'package:islamiapp/core/constants/app_assets.dart';
import 'package:animate_do/animate_do.dart';
import 'package:islamiapp/features/layout/pages/intro_screen.dart';
import 'package:islamiapp/features/layout/pages/layout_Page.dart';

class splashPage extends StatefulWidget {
  static String routename = "splash";
  static Duration  _duraton = Duration(
   milliseconds: 1750
  );
  const splashPage({super.key});

  @override
  State<splashPage> createState() => _splashPageState();
}

class _splashPageState extends State<splashPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed( Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => IntroScreen() ));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;


    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppAssets.splashBG)
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            FadeInDown(
              duration: splashPage._duraton,
              child: Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  AppAssets.splashGlow,
                  height: size.height * 0.30,
                ),
              ),
            ),
            FadeInLeft(
              duration: splashPage._duraton,
              child: Container(
                margin: EdgeInsets.only(bottom: size.height * 0.25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    AppAssets.splashLeft,
                    height: size.height * 0.25
                    ,
                  ),
                ),
              ),
            ),
            FadeInRight(
              duration: splashPage._duraton,
              child: Container(
                margin: EdgeInsets.only(top: size.height * 0.55),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    AppAssets.splashRight,
                    height: size.height * 0.25
                    ,
                  ),
                ),
              ),
            ),
            ZoomIn(
              duration: splashPage._duraton,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  AppAssets.splashMiddle1,
                  height: size.height * 0.25
                  ,
                ),
              ),
            ),
            ZoomIn(
              duration: splashPage._duraton,
              child: Container(
                margin: EdgeInsets.only(top: size.height * 0.25),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    AppAssets.splashMiddle2,
                    height: size.height * 0.25
                    ,
                  ),
                ),
              ),
            ),
            ZoomIn(
              duration: splashPage._duraton,
              child: Container(
                margin: EdgeInsets.only(top: size.height * 0.02),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    AppAssets.on_topsplash_onborad,
                    height: size.height * 0.25
                    ,
                  ),
                ),
              ),
            ),
            FadeInUp(
              duration: splashPage._duraton,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  AppAssets.splashBrand,
                  height: size.height * 0.25
                  ,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
