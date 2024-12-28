import 'package:flutter/material.dart';
import 'package:islamiapp/core/constants/app_assets.dart';

import '../../../core/theme/app_colors.dart';

class customenavbar extends StatelessWidget {
  final int selectedIndex;
  final int navbar;
  final String IconPath;
  const customenavbar({super.key, required this.selectedIndex, required this.navbar, required this.IconPath});

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 60,
        height: 34,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(66),
          color: selectedIndex == navbar ? AppColor.secondoryColor.withOpacity(0.6) : Colors.transparent,
        ),
        child:
        ImageIcon(
            AssetImage(IconPath)));
  }
}
