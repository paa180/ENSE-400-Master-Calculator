import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnitConversion extends StatelessWidget {
  const UnitConversion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: const Text("UnitConversion", style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Unit Conversion', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
