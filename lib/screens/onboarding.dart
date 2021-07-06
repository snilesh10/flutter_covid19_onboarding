import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class CovidOnboarding extends StatefulWidget {
  const CovidOnboarding({Key? key}) : super(key: key);

  @override
  _CovidOnboardingState createState() => _CovidOnboardingState();
}

class _CovidOnboardingState extends State<CovidOnboarding> {
  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: IntroductionScreen(
          pages: [
            PageViewModel(
                title: "How To Protect Youself From Covid 19",
                body: "Guidelines to protect yourself from the Covid 19 Virus.",
                image: _buildImage('corona.png'),
                decoration: pageDecoration),
            PageViewModel(
              title: "Use Sanitiser",
              body: "Always carry an alcohol based hand sanitiser with you.",
              image: _buildImage('use-sanitizer.png'),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: "Wash Your Hands",
              body:
                  "Wash your hands for 30 seconds using soap and clean water or sanitiser.",
              image: _buildImage('wash-hands.png'),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: "Avoid Shake-Hands",
              body: "Avoid shake-hands or any contact with other person.",
              image: _buildImage('avoid-shakehands.png'),
              decoration: pageDecoration,
            ),
          ],
          globalBackgroundColor: Colors.white,
          globalHeader: Align(
            alignment: Alignment.topRight,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 16, right: 16),
                child: _buildImage('corona.png', 50),
              ),
            ),
          ),
          onDone: () {},
          showSkipButton: true,
          skip: const Text(
            'SKIP',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          next: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
          done: const Text('Done',
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
          curve: Curves.fastLinearToSlowEaseIn,
          controlsMargin: const EdgeInsets.all(16),
          controlsPadding: const EdgeInsets.all(12.0),
          dotsDecorator: const DotsDecorator(
            size: Size(10.0, 10.0),
            color: Color(0xFFFFFFFF),
            activeColor: Color(0xFF073b4c),
            activeSize: Size(22.0, 10.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
          ),
          dotsContainerDecorator: const ShapeDecoration(
            color: Color(0xFF3a86ff),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
          ),
        ),
      ),
    );
  }
}
