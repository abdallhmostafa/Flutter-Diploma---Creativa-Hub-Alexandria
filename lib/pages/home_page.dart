import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 20,
        children: [
          // حط لي صورة من هنا
          // خد بالك لازم يكون المسار كده
          // assets/----/-----     كده صح /
          //not assets\----\-----   كده غلط \
          Image.asset(
            "assets/images/nvidia models, abdallh mostafa elrabiey.PNG",
          ),
          Lottie.asset(
            "assets/animations/Alphabet .json",
            height: 200,
            errorBuilder: (context, error, stackTrace) {
              return Column(
                children: [
                  Icon(Icons.error_rounded, size: 40, color: Colors.red),
                  Text(
                        "يوجد خطأ هنااااا يا معلم",
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: "Cairo",
                          fontWeight: FontWeight.w900,
                        ),
                      )
                      .animate()
                      .fade(duration: Duration(milliseconds: 300))
                      .slideX(),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
