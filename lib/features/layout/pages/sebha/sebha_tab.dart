import 'package:flutter/material.dart';
import 'package:islamiapp/core/constants/app_assets.dart';
import 'package:islamiapp/core/theme/app_colors.dart';
import 'package:islamiapp/features/layout/widgets/upperLogo.dart';

class sebhatab extends StatefulWidget {
  const sebhatab({super.key});

  @override
  State<sebhatab> createState() => _sebhatabState();
}

class _sebhatabState extends State<sebhatab> {

  int counter = 0;
  double angle = 0;
  int currentIndex = 0;
  List<String> list = ["سبحان الله","الحمدالله" , "لا اله الا  الله"];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Sebha_backGround.png"),
          fit: BoxFit.cover, // Ensures the image covers the whole container
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/Logo (1).png", height: 0.15 * size.height,),
              const SizedBox(height: 16,),
               Center(
                child: Text(
                  list[currentIndex], style: TextStyle(
                  fontFamily: "Janna",
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 38
                ),
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(),
              Center(
                child: GestureDetector(
                  onTap: _onsebhaTap,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: size.width * 0.35
                        ),
                          child: Image.asset(
                              "assets/images/Sebha_head.png"),
                        height: size.height * 0.10,
                      ),
                      Container(
                          margin: EdgeInsets.only(top: size.height * 0.09),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Transform.rotate(
                                angle: angle,
                                child: Image.asset("assets/images/SebhaBody 1.png",
                                  width: size.width * 0.70,
                                  height: size.width * 0.70,
                                  fit: BoxFit.fill,),
                              ),
                              Text(counter.toString(), style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Janna",
                                color: Colors.white,
                              ),)

                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      )
    );
  }
  _onsebhaTap  (){
    counter++;
    angle -= 1;

    if (counter  == 33) {
      counter = 0;
      currentIndex++;
      if(currentIndex == 3 ) currentIndex = 0 ;
    }
    setState(() {

    });
  }
}
