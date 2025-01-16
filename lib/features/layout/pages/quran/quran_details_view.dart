

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/core/constants/app_assets.dart';
import 'package:islamiapp/core/theme/app_colors.dart';
import 'package:islamiapp/features/layout/pages/quran/widgets/SurahData.dart';

class quranDetailView extends StatefulWidget {

  static const String routeName = "QuranDetailsView";


   const quranDetailView({super.key});

  @override
  State<quranDetailView> createState() => _quranDetailViewState();
}

class _quranDetailViewState extends State<quranDetailView> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {

    var args = ModalRoute.of(context)?.settings.arguments as SurahData;


    if(versesList.isEmpty) loadData(args.id.toString());

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.quranDetailsView), fit: BoxFit.fill)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(args.nameEN, style: TextStyle(
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
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(args.nameAR,
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 26,
                  fontFamily: "Janna",
                  color: AppColor.primaryColor
              ),),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) =>
                  Text(versesList[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Janna",
                    color: AppColor.primaryColor
                ),
                  ),
                itemCount: versesList.length,
              ),
            )

          ],
        ),
      ),
    );
  }

  void loadData(String surahId) async{
    String content = await rootBundle.loadString("assets/files/$surahId.txt");
    setState(() {
      versesList = content.split("\n");
    });
  }
}
