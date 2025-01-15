import 'package:flutter/material.dart';
import 'package:islamiapp/core/constants/app_assets.dart';
import 'package:islamiapp/core/theme/app_colors.dart';
import 'package:islamiapp/features/layout/widgets/upperLogo.dart';

class timestab extends StatelessWidget {
  const timestab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.times_tab),
          fit: BoxFit.cover, // Ensures the image covers the whole container
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:Stack(
            children:[
              Container(
                color: AppColor.secondoryColor.withOpacity(0.8),
              ),
              upperlogo()
            ]
        ),
      ),
    );
  }
}
