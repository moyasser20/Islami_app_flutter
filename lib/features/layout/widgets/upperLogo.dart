import 'package:flutter/material.dart';
import 'package:islamiapp/core/constants/app_assets.dart';

class upperlogo extends StatelessWidget {
  const upperlogo({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
            child: Image.asset(AppAssets.islami_logo,height:size.height * 0.25, width: size.width * 0.68,),),
      ],
    );
  }
}
