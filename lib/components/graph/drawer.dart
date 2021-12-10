// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

/// A menu drawer supporting toggling theme and performance overlay.
class GalleryDrawer extends StatelessWidget {
  final bool showPerformanceOverlay;
  final ValueChanged<bool> onShowPerformanceOverlayChanged;

  const GalleryDrawer(
      {Key? key,
      this.showPerformanceOverlay = false,
      required this.onShowPerformanceOverlayChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        // Performance overlay toggle.
       ListTile(
          leading: Icon(Icons.assessment),
          title: Text('Performance Overlay'),
          onTap: () {
            onShowPerformanceOverlayChanged(!showPerformanceOverlay);
          },
          selected: showPerformanceOverlay,
          trailing: Checkbox(
            value: showPerformanceOverlay,
            onChanged: (bool? value) {
              onShowPerformanceOverlayChanged(!showPerformanceOverlay);
            },
          ),
        ),
      ]),
    );
  }
}