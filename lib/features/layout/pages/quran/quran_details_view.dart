

import 'package:flutter/material.dart';
import 'package:islamiapp/core/constants/app_assets.dart';
import 'package:islamiapp/core/theme/app_colors.dart';

class quranDetailView extends StatelessWidget {

  static const String routeName = "QuranDetailsView";

  const quranDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.quranDetailsView), fit: BoxFit.fill)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Al-Fatiha", style: TextStyle(
            fontSize: 20,
            fontFamily: "Janna",
            color: AppColor.primaryColor
          ),),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: AppColor.primaryColor
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text("الفاتحه", style: TextStyle(
                fontSize: 26,
                  fontFamily: "Janna",
                  color: AppColor.primaryColor
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
