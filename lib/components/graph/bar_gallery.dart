import 'package:flutter/material.dart';
import 'package:monest/components/graph/gallery_scaffold.dart';
import 'package:monest/components/graph/vertical_bar_label.dart';

List<GalleryScaffold> buildGallery() {
  return [
    // ignore: unnecessary_new
    new GalleryScaffold(
      listTileIcon: Transform.rotate(
          angle: 1.5708, child: const Icon(Icons.insert_chart)),
      title: 'Vertical Bar Chart with Bar Labels',
      subtitle: 'Vertical bar chart with a single series and bar labels',
      childBuilder: () => VerticalBarLabelChart.withRandomData(),
    )
  ];
}