import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:nectar_app/core/constants/color_const.dart';
import 'package:nectar_app/screens/onBoarding/view/onBoarding_page.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _HomePageState();
}

class _HomePageState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 8), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const OnBoarding()),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return AnimatedSplashScreen(
            splash: 'assets/images/nectar.png',
            duration: 7000,
            backgroundColor: ColorConst.green,
            nextScreen: const OnBoarding(),
            splashTransition: SplashTransition.rotationTransition,
            animationDuration: const Duration(seconds: 2),
            curve: Curves.easeInCirc,
          );
  }
}
