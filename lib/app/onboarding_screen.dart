import 'dart:ui';

import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          width: media.width * 1.7,
          bottom: 200,
          left: 100,
          child: Image.asset("assets/Backgrounds/Spline.png"),
        ),
        Positioned.fill(
          child:
              BackdropFilter(filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10)),
        ),
        // const RiveAnimation.asset("assets/RiveAssets/shapes.riv"),
        Positioned.fill(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          child: const SizedBox(),
        )),
        SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: SizedBox(
                width: media.width - 150,
                child: const Column(
                  children: [
                    Text(
                      "Learn design & code",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 60,
                        height: 1.2,
                      ),
                    ),
                    Text(
                      "",
                      style: TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ))
      ],
    ));
  }
}
