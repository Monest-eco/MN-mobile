import 'package:flutter/material.dart';
import 'package:monest/components/graph/vertical_bar_label.dart';
import 'package:monest/utils/responsive_widget.dart';

SingleChildScrollView home(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
          child: Image(
            image: const AssetImage("assets/images/home.png"),
            height: (ResponsiveWidget.isSmallScreen(context))
                ? MediaQuery.of(context).size.height * 0.3
                : MediaQuery.of(context).size.height * 0.2,
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
          child: Center(
            child: Text(
              "Énergie consommée aujourd'hui",
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
            padding: const EdgeInsets.all(17.0),
            child: Card(
                color: const Color(0xfffff7f4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // if you need this
                  side: BorderSide(
                    color: Colors.grey.withOpacity(0.2),
                    width: 0.5,
                  ),
                ),
                child: Column(children: <Widget>[
                  SizedBox(
                      height: 250.0,
                      child: VerticalBarLabelChart.withRandomData()),
                ]))),
      ],
    ),
  );
}
