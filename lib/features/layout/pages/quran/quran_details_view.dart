

import 'package:flutter/material.dart';
import 'package:islamiapp/core/constants/app_assets.dart';
import 'package:islamiapp/core/theme/app_colors.dart';
import 'package:islamiapp/features/layout/pages/quran/widgets/SurahData.dart';

class quranDetailView extends StatelessWidget {

  static const String routeName = "QuranDetailsView";

  final SurahData surahData;

  const quranDetailView({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {

    var args = ModalRoute.of(context)?.settings.arguments as SurahData;

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
            Text('''ابِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ
            الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ
            الرَّحْمَنِ الرَّحِيمِ
            مَالِكِ يَوْمِ الدِّينِ
            إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ
            اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ
            صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين

              ''',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Janna",
                  color: AppColor.primaryColor
              ),),
          ],
        ),
      ),
    );
  }
}
