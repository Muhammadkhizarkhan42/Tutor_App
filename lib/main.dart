import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_projects/page_1.dart';
import 'package:home_projects/page_4.dart';
import 'package:home_projects/smssend_page.dart';
import 'package:home_projects/splash_screen.dart';
import 'package:home_projects/trielpage.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
        statusBarColor: Colors.transparent),
  );

  await initialization(null);
  runApp(const MyApp());
}
Future initialization (BuildContext? contex) async{
  await Future.delayed(Duration(seconds:  5));
  CircularProgressIndicator(color: Colors.red);
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Office',
      // theme: ThemeData(85
      //   primarySwatch: Colors.blue,
      // ),
      home: const HomePage(),
    );
  }
}

var emails =["k@123","g@"];
var paswords =["k123","g"];
var phone_no=["12345","11111"];
