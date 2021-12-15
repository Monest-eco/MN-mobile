import 'package:flutter/material.dart';
import 'package:monest/pages/analysis_page.dart';
import 'package:monest/pages/home_page.dart';

/*
#F4EEEC : (244, 238, 236, 1) : beige
#AEA19E : (174, 161, 158, 1) : brown
#DFC2BE : (223, 194, 190, 1) : pink
#CDB6B2 : (205, 182, 178, 1) : red
#0A0A09 : (10, 10, 9, 1) : black
#635D5C : (99, 93, 92, 1) : grey
#F3293B : (243, 41, 59, 1) : red
#B572A9 : (181, 114, 169, 1) : purple
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monest-eco',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Monest-eco'),
        '/analysis': (context) => Analysis(),


      },
      showPerformanceOverlay: false,
      debugShowCheckedModeBanner: false,
    );
  }
}
