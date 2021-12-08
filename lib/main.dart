import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:monest/utils/responsive_widget.dart';

/*
#F4EEEC
#AEA19E
#DFC2BE
#CDB6B2
#0A0A09
#635D5C
#F3293B
#B572A9
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monest-eco',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Monest-eco'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/perso.png"),
          ),
        ),
        title: const Text(
          "Chez Soso et Richou",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: Image(
              image: const AssetImage("assets/images/home.png"),
              height: (ResponsiveWidget.isSmallScreen(context)) ? MediaQuery.of(context).size.height * 0.3 : MediaQuery.of(context).size.height * 0.2,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
            child: Center(
              child: Text(
                "Energy Consumption today",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Center(
            child: Text(
              "30€",
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Center(
            child: Text(
              "20kWh",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: (ResponsiveWidget.isLargeScreen(context)) ? null : CurvedNavigationBar(
        backgroundColor: Colors.blue,
        index: 2,
        items: const <Widget>[
          Icon(
            Icons.lightbulb,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.people,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.home,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.settings,
            size: 30,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
