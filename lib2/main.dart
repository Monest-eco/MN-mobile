// import 'package:charts_flutter/flutter.dart';

// import 'package:flutter/material.dart';
// import 'app_config.dart';
// import 'home.dart';

// /// The main gallery app widget.
// class GalleryApp extends StatefulWidget {
//   GalleryApp({Key? key}) : super(key: key);

//   @override
//   GalleryAppState createState() => new GalleryAppState();
// }

// /// The main gallery app state.
// ///
// /// Controls performance overlay, and instantiates a [Home] widget.
// class GalleryAppState extends State<GalleryApp> {
//   // Initialize app settings from the default configuration.
//   bool _showPerformanceOverlay = defaultConfig.showPerformanceOverlay;

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//         title: defaultConfig.appName,
//         theme: defaultConfig.theme,
//         showPerformanceOverlay: _showPerformanceOverlay,
//         home: new Home(
//           showPerformanceOverlay: _showPerformanceOverlay,
//           onShowPerformanceOverlayChanged: (bool value) {
//             setState(() {
//               _showPerformanceOverlay = value;
//             });
//           },
//         ));
//   }
// }

// void main() {
//   runApp(new GalleryApp());
// }