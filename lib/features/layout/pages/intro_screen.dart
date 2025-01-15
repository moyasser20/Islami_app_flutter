import 'package:flutter/material.dart';
import 'package:islamiapp/core/constants/app_assets.dart';
import 'package:islamiapp/core/theme/app_colors.dart';
import 'package:islamiapp/features/layout/pages/layout_Page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  static String routeName = "/introScreen";
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController pageController = PageController();
  int _countPage = 0;

  List<Map<String, String>> imagePaths = [
    {
      "image": AppAssets.firstOnboard,
      "comment": "",
      "description": "Welcome To Islami App"
    },
    {
      "image": AppAssets.SecondOnboard,
      "comment": "Welcome To Islami App",
      "description": "We Are Very Excited To Have You In Our Community "
    },
    {
      "image": AppAssets.ThirdOnboard,
      "comment": "Reading The Quran",
      "description": "Read, and your Lord is the Most Generous"
    },
    {
      "image": AppAssets.FourthOnboard,
      "comment": "Bearish",
      "description": "Praise the name of your Lord, the Most High"
    },
    {
      "image": AppAssets.fifthOnboard,
      "comment": "Holy Quran Radio",
      "description":
      "You can listen to the Holy Quran Radio through the application for free and easily"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.secondoryColor,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.060),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(AppAssets.on_topsplash_onborad),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.15),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(AppAssets.splashMiddle2),
                ),
              ),
            ],
          ),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (int page) {
                setState(() {
                  _countPage = page;
                });
              },
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.10),
                      child: Image.asset(imagePaths[index]["image"]!),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      imagePaths[index]["comment"]!,
                      style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Text(
                        imagePaths[index]["description"]!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: index == 0 ? 27 : 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if(_countPage != 0)
                          ElevatedButton(onPressed: () {
                            pageController.previousPage(duration: Duration(
                              milliseconds: 300
                            ), curve: Curves.easeInOut);

                          }, child:Text("Back" , style: TextStyle(
                            color: AppColor.primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.secondoryColor,
                            foregroundColor: AppColor.primaryColor
                          ),
                          )
                        else
                          const SizedBox(width: 60,),
                        SmoothPageIndicator(controller: pageController, count: imagePaths.length,
                          effect:ExpandingDotsEffect(
                            dotColor: AppColor.white,
                            activeDotColor: AppColor.primaryColor,
                            dotWidth: 7,
                            dotHeight: 7,
                            expansionFactor: 2.0
                          ) ,),
                        ElevatedButton(
                          onPressed: () {
                            if (_countPage < imagePaths.length - 1) {
                              // Navigate to the next page
                              pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            } else {
                              // Navigate to the layout page
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => layoutpage()),
                              );
                            }
                          },
                          child: Text(
                            _countPage < imagePaths.length - 1 ? "Next" : "Finish",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.secondoryColor,
                            foregroundColor: AppColor.primaryColor,
                          ),
                        )

                      ],
                    )

                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
