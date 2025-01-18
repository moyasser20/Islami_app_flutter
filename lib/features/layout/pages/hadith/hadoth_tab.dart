import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/core/constants/app_assets.dart';
import 'package:islamiapp/core/theme/app_colors.dart';
import 'package:islamiapp/features/layout/pages/hadith/widgets/haith_item_card.dart';
import 'package:islamiapp/features/layout/widgets/upperLogo.dart';

import '../../../../Models/hadith_data.dart';
import '../quran/widgets/SurahData.dart';

class hadithtab extends StatefulWidget {

  hadithtab({super.key});

  @override
  State<hadithtab> createState() => _hadithtabState();
}

class _hadithtabState extends State<hadithtab> {
  List<HadithData> hadithDataList =  [];

  @override
  Widget build(BuildContext context) {
    if(hadithDataList.isEmpty) loadData();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppAssets.hadithBackground)
        )
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/images/Logo (1).png", width: 20, height: 120,),
            //SizedBox(height: 40,),
            Expanded(
              child: CarouselSlider(
                  items: hadithDataList.map((e) {
                    return hadithCard(
                      hadithData: e,
                    );
                  },
                  ).toList(),
                  options: CarouselOptions(
                    height: 620,
                    aspectRatio:0.7,
                    viewportFraction: 0.68,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  )
              ),
            )



          ],
        ),
      ),
    );
  }

  void loadData() async
  {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> singleHadith = content.split("#");
    for(var element in singleHadith)
      {
        int index = element.indexOf("\n");
        String HadithTitle  = element.substring(0, index);
        String Hadithcontent  = element.substring(index+1);


        var hadithData  = HadithData(HadithTitle: HadithTitle, Hadithcontent: Hadithcontent);

        hadithDataList.add(hadithData);


      }

    print(singleHadith[0]);
  }
}
