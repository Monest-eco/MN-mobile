import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class VerticalBarLabelChart extends StatelessWidget {
  final List<charts.Series<dynamic, String>> seriesList;
  final bool animate;
  final int index = 3;

  // ignore: use_key_in_widget_constructors
  const VerticalBarLabelChart(this.seriesList, {this.animate = false});

  /// Creates a [BarChart] with sample data and no transition.
  factory VerticalBarLabelChart.withSampleData() {
    return VerticalBarLabelChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  // EXCLUDE_FROM_GALLERY_DOCS_START
  // This section is excluded from being copied to the gallery.
  // It is used for creating random series data to demonstrate animation in
  // the example app only.
  factory VerticalBarLabelChart.withRandomData() {
    return VerticalBarLabelChart(_createRandomData());
  }

  /// Create random data.
  static List<charts.Series<OrdinalSales, String>> _createRandomData() {
    final random = Random();
    var count1 = random.nextInt(100);
    var count2 = random.nextInt(100);
    var count3 = random.nextInt(100);
    var count4 = random.nextInt(100);
    var count5 = random.nextInt(100);
    var count6 = random.nextInt(100);
    var count7 = random.nextInt(100);
    var count8 = random.nextInt(100);
    var count9 = random.nextInt(100);
    var count10 = random.nextInt(100);
    var count11 = random.nextInt(100);
    var count12 = random.nextInt(100);
    //var result = count1 + count2 + count3 + count4 + count5 + count6 + count7 + count8 + count9 + count10 + count11 + count12;
    var time = DateTime.now();
    int hour = (time.hour ~/ 2) * 2;

    print(hour);
    final data = [
      OrdinalSales('00h', count1, 0),
      OrdinalSales('2h', count2, 2),
      OrdinalSales('4h', count3, 4),
      OrdinalSales('6h', count4, 6),
      OrdinalSales('8h', count5, 8),
      OrdinalSales('10h', count6, 10),
      OrdinalSales('12h', count7, 12),
      OrdinalSales('14h', count8, 14),
      OrdinalSales('16h', count9, 16),
      OrdinalSales('18h', count10, 18),
      OrdinalSales('20h', count11, 20),
      OrdinalSales('22h', count12, 22),
    ];
    return [
      charts.Series<OrdinalSales, String>(
          id: 'Graph',
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: data,
          fillColorFn: (OrdinalSales sales, index) =>
              (sales.hour == hour) ? charts.Color.fromHex(code: '#ff1481'): charts.Color.fromHex(code: '#ffb092'),
          labelAccessorFn: (OrdinalSales sales, _) => sales.sales.toString()),
    ];
  }
  // EXCLUDE_FROM_GALLERY_DOCS_END

  // [BarLabelDecorator] will automatically position the label
  // inside the bar if the label will fit. If the label will not fit,
  // it will draw outside of the bar.
  // Labels can always display inside or outside using [LabelPosition].
  //
  // Text style for inside / outside can be controlled independently by setting
  // [insideLabelStyleSpec] and [outsideLabelStyleSpec].
  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
      // Set a bar label decorator.
      // Example configuring different styles for inside/outside:
      //       barRendererDecorator: new charts.BarLabelDecorator(
      //          insideLabelStyleSpec: new charts.TextStyleSpec(...),
      //          outsideLabelStyleSpec: new charts.TextStyleSpec(...)),
      barRendererDecorator: charts.BarLabelDecorator<String>(),
      domainAxis: const charts.OrdinalAxisSpec(),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      OrdinalSales('2014', 5, 2014),
      OrdinalSales('2015', 25, 2015),
      OrdinalSales('2016', 100, 2016),
      OrdinalSales('2017', 75, 2017),
    ];

    return [
      charts.Series<OrdinalSales, String>(
          id: 'Sales',
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: data,
          // Set a label accessor to control the text of the bar label.
          labelAccessorFn: (OrdinalSales sales, _) =>
              '\$${sales.sales.toString()}')
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;
  final int hour;

  OrdinalSales(this.year, this.sales, this.hour);
}
