import 'package:flutter/material.dart';
import 'package:islamiapp/core/constants/app_assets.dart';
import 'package:islamiapp/core/theme/app_colors.dart';
import 'package:islamiapp/features/layout/pages/hadith/hadoth_tab.dart';
import 'package:islamiapp/features/layout/pages/quran/quran_tab.dart';
import 'package:islamiapp/features/layout/pages/radio/radio_tab.dart';
import 'package:islamiapp/features/layout/pages/sebha/sebha_tab.dart';
import 'package:islamiapp/features/layout/pages/times/times_tab.dart';

import '../widgets/cistome_navbar_items.dart';

class layoutpage extends StatefulWidget {
  static String routeName = "/layout";
  const layoutpage({super.key});

  @override
  State<layoutpage> createState() => _layoutpageState();
}

class _layoutpageState extends State<layoutpage> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    quranTab(),
    hadithtab(),
    sebhatab(),
    radiotab(),
    timestab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondoryColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index)
        {
          selectedIndex = index;
          setState(() {

          });
        },
        currentIndex: selectedIndex,
        backgroundColor: AppColor.primaryColor,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.white,
        unselectedItemColor: AppColor.secondoryColor
        ,
        items: [
          BottomNavigationBarItem(icon:
          customenavbar(selectedIndex: selectedIndex, navbar: 0, IconPath: AppAssets.firsticon,), label: "Quran"),
          BottomNavigationBarItem(icon:customenavbar(selectedIndex: selectedIndex, navbar: 1, IconPath: AppAssets.fifthicon,), label: "Hadith"),
          BottomNavigationBarItem(icon:customenavbar(selectedIndex: selectedIndex, navbar: 2, IconPath: AppAssets.thirdticon,), label: "Sebha"),
          BottomNavigationBarItem(icon:customenavbar(selectedIndex: selectedIndex, navbar: 3, IconPath: AppAssets.fourthicon,), label: "Radio"),
          BottomNavigationBarItem(icon:customenavbar(selectedIndex: selectedIndex, navbar: 4, IconPath: AppAssets.secondticon,),label: "Time"),
        ],
      ),
      body: tabs[selectedIndex],
    );
  }
}
