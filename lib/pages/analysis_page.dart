import 'package:flutter/material.dart';
import 'package:monest/components/analysis/cards/cards.dart';
import 'package:monest/components/home_page/Home/home_app_bar.dart';

class Analysis extends StatefulWidget {
  const Analysis({ Key? key }) : super(key: key);

  @override
  _AnalysisState createState() => _AnalysisState();
}

class _AnalysisState extends State<Analysis> {

  List<Widget> cards = List<Widget>.generate(10, (index) => const MyCards());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: cards,
        ),
      ),
      )
    );
  }
}