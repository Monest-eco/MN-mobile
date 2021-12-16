import 'package:flutter/material.dart';
import 'package:monest/components/graph/vertical_bar_label.dart';
import 'package:monest/components/sidebar/sidebar.dart';
import 'package:monest/utils/responsive_widget.dart';
final routes = List.generate(20, (i) => 'test $i');
Row home(BuildContext context) {
  final menu = Container(
      color: Colors.blue,
      child: const SafeArea(
        right: false,
        child: NavigationDrawerWidget(),
      )
    );
  return Row(
    children: [
      (ResponsiveWidget.isSmallScreen(context)) ? const SizedBox.shrink() : menu,
      Expanded(
        child: Column(
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
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: <Widget>[
                  SizedBox(height: 250.0, child: VerticalBarLabelChart.withRandomData()),
                ])),
          ],
        ),
      ),
    ],
  );
}