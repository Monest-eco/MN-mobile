import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


class MyCards extends StatelessWidget {
  const MyCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 15.0, 0.0, 5.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 5,
        child: Column(
          children: [
            ListTile(
              leading: CircularPercentIndicator(
                radius: 50.0,
                lineWidth: 6.0,
                animation: true,
                percent: 0.7,
                center: const Image(image: AssetImage('./assets/images/facture2.png'), width: 30)
              ),
              title: const Text(
                "La consomation de votre frigo est de : " + "70%",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("ceci est un conseil pour réduire la consomation"),
            )
          ],
        ),
      ),
    );
  }
}