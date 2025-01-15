import 'package:flutter/material.dart';
import 'package:islamiapp/Models/recent_data.dart';
import 'package:islamiapp/Models/recent_data.dart';
import 'package:islamiapp/core/constants/app_assets.dart';
import 'package:islamiapp/core/theme/app_colors.dart';

class verticalSurahView extends StatelessWidget {
  final String Surahnumber;
  final String NameEN;
  final String NameAr;
  final String verses;
  const verticalSurahView({super.key, required this.NameEN, required this.NameAr, required this.verses, required this.Surahnumber,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Container(
              child: Stack(
                alignment: Alignment.center,
                  children: [
                    Image.asset(AppAssets.suralogonumber),
                    Text(Surahnumber,style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),)
                  ]
              )
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                NameEN, style: TextStyle(
                  fontFamily: "Janna",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color:  AppColor.white
              ),),
              SizedBox(height: 8,),
              Text(verses,style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color:  AppColor.white
              ),)
            ],
          ),
          Spacer(),
          Text(NameAr, style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color:  AppColor.white
          ),)
        ],
      ),
    );
  }
}
