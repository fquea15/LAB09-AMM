import 'package:flutter/material.dart';
//import 'package:laboratorio02/app/view/task_list.dart';
//import 'package:laboratorio02/app/view/home.dart';
//import 'package:laboratorio02/app/view/home.dart';
import 'package:laboratorio02/app/view/splash/Splash_page.dart';
//import 'package:laboratorio02/app/view/welcome.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFF40B7AD);
    const textcolor = Color(0xFF4A4A4A);
    const backgrouncolor = Color(0xFFF5F5F5);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
        scaffoldBackgroundColor:  backgrouncolor,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Popponis',
          bodyColor: textcolor,
          displayColor: textcolor,
        ),
        useMaterial3: true,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: SplashPage(),
    );
  }
}
