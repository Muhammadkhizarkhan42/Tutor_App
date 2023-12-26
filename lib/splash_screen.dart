import 'dart:async';

import 'package:flutter/material.dart';
import 'package:home_projects/page_1.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.push(
          context, MaterialPageRoute(
          builder: (contex)=>HomePage(),
      )
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.topLeft,
              colors: [
                Color(0xffffffff),
                Color(0xfffce4ec),
              ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/degree2.png',height: 250,width: 250,),
            SizedBox(height: 30,),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
