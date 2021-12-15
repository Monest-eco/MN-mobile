import 'dart:developer';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
// import 'package:monest/components/graph/vertical_bar_label.dart';

import 'package:monest/utils/bottom_app_bar.dart';
import 'package:monest/utils/responsive_widget.dart';
import 'package:monest/utils/home_app_bar.dart';

import 'package:monest/components/sidebar.dart';
import 'package:monest/components/home.dart';

import 'package:monest/components/graph/bar_gallery.dart' as bar show buildGallery;
// import 'package:monest/components/graph/drawer.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);
  final barGalleries = bar.buildGallery();

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 2;
  final barGalleries = bar.buildGallery();
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void _setupPerformance() {
    charts.Performance.time = (String tag) => Timeline.startSync(tag);
    charts.Performance.timeEnd = (_) => Timeline.finishSync();
  }
  @override
  Widget build(BuildContext context) {
    var galleries = <Widget>[];

    // Add example bar charts.
    galleries.addAll(
        barGalleries.map((gallery) => gallery.buildGalleryListTile(context)));
    _setupPerformance();
    List<Widget> _widgetBodyOptions = <Widget>[
      const Text('Index 1: Conseil'),
      const Text('Index 2: Community'),
      home(context),
      const Text('Index 3: Me'),
      const Text('Index 4: Settings'),
    ];
    List<PreferredSizeWidget> _widgetBarOptions = <PreferredSizeWidget>[
      homeAppBar(context),
      homeAppBar(context),
      homeAppBar(context),
      homeAppBar(context),
      homeAppBar(context),
    ];
    List<CurvedNavigationBar> _widgetBottomOptions = <CurvedNavigationBar>[
      bottomBar(context, _selectedIndex, _onItemTapped),
      bottomBar(context, _selectedIndex, _onItemTapped),
      bottomBar(context, _selectedIndex, _onItemTapped),
      bottomBar(context, _selectedIndex, _onItemTapped),
      bottomBar(context, _selectedIndex, _onItemTapped),
    ];
    // (ResponsiveWidget.isLargeScreen(context)) ? null : 
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: _widgetBarOptions.elementAt(_selectedIndex),
      body: _widgetBodyOptions.elementAt(_selectedIndex),
      bottomNavigationBar: (ResponsiveWidget.isLargeScreen(context)) ? null : _widgetBottomOptions.elementAt(_selectedIndex),
    );
  }
}