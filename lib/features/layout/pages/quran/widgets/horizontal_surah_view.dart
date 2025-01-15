import 'package:flutter/material.dart';
import 'package:islamiapp/Models/recent_data.dart';
import 'package:islamiapp/core/constants/app_assets.dart';
import 'package:islamiapp/core/theme/app_colors.dart';

class surahview extends StatelessWidget {

  final recentData recenData;

  const surahview({super.key, required this.recenData});

  @override
  Widget build(BuildContext context) {
    return Container(
     // width: 283,
      height: 150,
      margin:  EdgeInsets.symmetric(horizontal: 7),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(recenData.SurahNameEN, style: TextStyle(
                color: AppColor.secondoryColor,
                fontWeight: FontWeight.bold,
                fontSize: 26
              ),),
              Text(recenData.SurahNameAR, style: TextStyle(
                color: AppColor.secondoryColor,
                fontWeight: FontWeight.bold,
                fontSize: 26
              ),),
              Text(recenData.verses, style: TextStyle(
                color: AppColor.secondoryColor,
                fontWeight: FontWeight.bold,
                fontSize: 14
              ),),
            ],
          ),
          Image.asset(AppAssets.surahphotolistview)
        ],
      ),
    );
  }
}
