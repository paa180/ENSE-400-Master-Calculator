import 'package:flutter/material.dart';
import 'inversetrigonometric.dart';
import 'trigonometricdegrees.dart';
import 'trigonometricrads.dart';

// the ScientificCalc class extending the stateful widget
class ScientificCalc extends StatefulWidget {
  const ScientificCalc({Key? key}) : super(key: key);
  @override
  ScientificCalcState createState() => ScientificCalcState();
}

//scientificCalc state class extends scientific Calc
class ScientificCalcState extends State<ScientificCalc> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent, //background color
        appBar: AppBar(
          title: const Text("ScientificCalc", style: TextStyle(fontSize: 25)),
          backgroundColor: Colors.indigo, //top bar background color
        ),
        body: Column(
          //the scientific calculator body in column
          children: <Widget>[
            Column(
                //column one the energy window not developed yet, color yellow
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: MaterialButton(
                      height: 30.0,
                      minWidth: 180.0,
                      color: Colors.blue,
                      textColor: Colors.black,
                      child: const Text("Trigonometric in Rad",
                          style: TextStyle(fontSize: 20)),
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TrigonometricRad()),
                        )
                      },
                    ),
                  ),
                ]),
            Column(
                //column one the energy window not developed yet, color yellow
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: MaterialButton(
                      height: 30.0,
                      minWidth: 180.0,
                      color: Colors.blue,
                      textColor: Colors.black,
                      child: const Text("Trigonometric in Deg",
                          style: TextStyle(fontSize: 20)),
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const TrigonometricDegrees()),
                        )
                      },
                    ),
                  ),
                ]),
            Column(
                //column one the energy window not developed yet, color yellow
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: MaterialButton(
                      height: 30.0,
                      minWidth: 180.0,
                      color: Colors.blue,
                      textColor: Colors.black,
                      child: const Text("Inverse trigonometric",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20)),
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const InverseTrigonometric()),
                        )
                      },
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
