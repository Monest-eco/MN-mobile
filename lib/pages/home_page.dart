import 'dart:developer';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:monest/pages/analysis_page.dart';
import 'package:monest/utils/responsive_widget.dart';
import 'package:monest/components/home_page/Home/bottom_app_bar.dart';
import 'package:monest/components/home_page/Home/home_app_bar.dart';
import 'package:monest/components/home_page/Settings/setting_app_bar.dart';
import 'package:monest/components/home_page/Settings/settings.dart';
import 'package:monest/components/home_page/Home/home.dart';
import 'package:monest/components/graph/bar_gallery.dart' as bar
    show buildGallery;

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
  bool isDark = false;
  bool isWifi = false;
  int _selectedIndex = 2;
  final barGalleries = bar.buildGallery();
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onSwitchedDark(bool value) {
    setState(() {
      isDark = value;
    });
  }

  void _onSwitchedWifi(bool value) {
    setState(() {
      isWifi = value;
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
      const Analysis(),
      const Text('Index 2: Community'),
      home(context),
      const Text('Index 3: Me'),
      settings(context, _onSwitchedDark, _onSwitchedWifi, isDark, isWifi),
    ];
    List<PreferredSizeWidget> _widgetBarOptions = <PreferredSizeWidget>[
      homeAppBar(context),
      homeAppBar(context),
      homeAppBar(context),
      homeAppBar(context),
      settingsAppBar(context),
    ];
    List<CurvedNavigationBar> _widgetBottomOptions = <CurvedNavigationBar>[
      bottomBar(context, _selectedIndex, _onItemTapped),
      bottomBar(context, _selectedIndex, _onItemTapped),
      bottomBar(context, _selectedIndex, _onItemTapped),
      bottomBar(context, _selectedIndex, _onItemTapped),
      bottomBar(context, _selectedIndex, _onItemTapped),
    ];

    return Scaffold(
      appBar: _widgetBarOptions.elementAt(_selectedIndex),
      body: _widgetBodyOptions.elementAt(_selectedIndex),
      bottomNavigationBar: (ResponsiveWidget.isSmallScreen(context)) ? _widgetBottomOptions.elementAt(_selectedIndex): null,
    );
  }
}
