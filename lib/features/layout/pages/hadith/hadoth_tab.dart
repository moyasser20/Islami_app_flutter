import 'package:flutter/material.dart';
import 'package:islamiapp/core/constants/app_assets.dart';
import 'package:islamiapp/core/theme/app_colors.dart';
import 'package:islamiapp/features/layout/widgets/upperLogo.dart';

class hadithtab extends StatelessWidget {
  const hadithtab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppAssets.hadith_tap)
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              color: AppColor.secondoryColor.withOpacity(0.8),
            ),
            upperlogo()
          ],
        ),
      ),
    );
  }
}
