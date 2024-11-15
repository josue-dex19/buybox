import 'package:buybox/view/home/categorieIndex.dart';
import 'package:buybox/view/home/home.dart';
import 'package:buybox/view/home/rechercheChoix.dart';
import 'package:buybox/view/home/register.dart';
import 'package:buybox/view/home/signIn.dart';
import 'package:buybox/view/onBoarding/onBoarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
    '/signIn':(context) =>const SignIn(),
        '/register':(context)=>const Register(),
        '/home':(context)=>const Home(),
        '/Categorieindex':(context)=>const Categorieindex(),
        '/Recherchechoix':(context)=>const Recherchechoix(),

    },
      debugShowCheckedModeBanner: false,
      home:  Onboarding(),
    );
  }
}
