import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:nectar_app/core/constants/color_const.dart';
import 'package:nectar_app/core/extension/extension_page.dart';
import 'package:nectar_app/screens/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 8), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => SecondPage()),
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
            nextScreen: SecondPage(),
            splashTransition: SplashTransition.rotationTransition,
            animationDuration: Duration(seconds: 2),
            curve: Curves.easeInCirc,
          );
  }
}
