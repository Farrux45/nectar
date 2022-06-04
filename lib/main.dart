import 'package:flutter/material.dart';
import 'package:nectar_app/screens/select_location/view/select_location.dart';
import 'package:nectar_app/screens/splash_screen/view/splash_screen_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SelectLocation(),
    );
  }
}
