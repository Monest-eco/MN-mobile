import 'package:flutter/material.dart';

class RefreshButton extends StatefulWidget {
  const RefreshButton({Key? key}) : super(key: key);

  @override
  State<RefreshButton> createState() => _RefreshButtonState();
}


 //*
 /* This component is a button who reload a chart
 */


class _RefreshButtonState extends State<RefreshButton> {

  @override
  Widget build(BuildContext context) {
    void _handleButtonPress() {
      setState(() {});
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: _handleButtonPress, child: const Icon(Icons.refresh)),
    );
  }
}
