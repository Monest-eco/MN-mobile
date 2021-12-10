// // ignore_for_file: unnecessary_new

// import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:flutter/material.dart';
// import 'dart:developer';
// // import 'app_config.dart';
// import 'drawer.dart';
// import 'bar_gallery.dart' as bar show buildGallery;
// /// Main entry point of the gallery app.

// /// This renders a list of all available demos.
// class Home extends StatelessWidget {
//   final bool showPerformanceOverlay;
//   final ValueChanged<bool> onShowPerformanceOverlayChanged;
//   final barGalleries = bar.buildGallery();

//   Home(
//       {Key? key,
//       this.showPerformanceOverlay = false,
//       required this.onShowPerformanceOverlayChanged})
//       : super(key: key) {
//     // ignore: unnecessary_null_comparison
//     assert(onShowPerformanceOverlayChanged != null);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var galleries = <Widget>[];

//     // Add example bar charts.
//     galleries.addAll(
//         barGalleries.map((gallery) => gallery.buildGalleryListTile(context)));

//     _setupPerformance();

//     return Scaffold(
//       drawer: GalleryDrawer(
//           showPerformanceOverlay: showPerformanceOverlay,
//           onShowPerformanceOverlayChanged: onShowPerformanceOverlayChanged),
//       // appBar: new AppBar(title: new Text(defaultConfig.appName)),
//       body: new ListView(padding: kMaterialListPadding, children: galleries),
//     );
//   }

//   void _setupPerformance() {
//     // Change [printPerformance] to true and set the app to release mode to
//     // print performance numbers to console. By default, Flutter builds in debug
//     // mode and this mode is slow. To build in release mode, specify the flag
//     // blaze-run flag "--define flutter_build_mode=release".
//     // The build target must also be an actual device and not the emulator.
//     charts.Performance.time = (String tag) => Timeline.startSync(tag);
//     charts.Performance.timeEnd = (_) => Timeline.finishSync();
//   }
// }