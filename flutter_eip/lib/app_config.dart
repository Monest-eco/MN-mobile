// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

/// A particular configuration of the app.
class AppConfig {
  final String appName;
  final String appLink;
  final ThemeData theme;
  final bool showPerformanceOverlay;

  AppConfig({
    required this.appName,
    required this.appLink,
    required this.theme,
    required this.showPerformanceOverlay,
  });
}

/// The default configuration of the app.
AppConfig get defaultConfig {
  return new AppConfig(
    appName: 'Charts Gallery',
    appLink: '',
    theme: new ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.lightBlue,
    ),
    showPerformanceOverlay: false,
  );
}