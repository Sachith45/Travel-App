// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "assets/image1.jpg",
    "assets/image2.jpg",
    "assets/image3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.maxFinite,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(images[index]), fit: BoxFit.cover),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "Trips"),
                      AppText(
                        text: "Mountain",
                        size: 30,
                        color: Colors.white70,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 250,
                        child: AppText(
                            text:
                                "Mountain hikes give you an incredible sense of freedom along with edurance test",
                            color: AppColors.textColor3),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index == indexDots ? 25 : 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots
                                ? AppColors.textColor1
                                : AppColors.textColor),
                      );
                    }),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}