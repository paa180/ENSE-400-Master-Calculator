import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:masterc/scientificcalc.dart';
import 'package:masterc/unitconversioncalc.dart';
import 'basiccalc.dart';
import 'engineeringcalc.dart';

//main page that contained the four button for access the calculators
main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyApp(),
    title: 'Custom Fonts',
    theme: ThemeData(fontFamily: 'Rubik'),
  ));
}

//Myapp class extending stateless widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent, //background color
      appBar: AppBar(
          backgroundColor: Colors.indigo, //top bar background color
          title: const Center(
              child: //this child contained outline master calculator with 40 font size.
                  Text('Master Calculator', style: TextStyle(fontSize: 40)))),
      body: Center(
        //body of the main page with style of the four buttons
        child: Column(
          //the four button are in two column
          children: <Widget>[
            Row(
              //the first row of two buttons, the basic calc and engineering
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  //the padding to separate the top bar and the basicCalc button
                  padding: const EdgeInsets.all(10.0),
                  child: MaterialButton(
                    // this child contained the basic pressing button styles
                    height: 100.0,
                    minWidth: 180.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child:
                        const Text("BasicCalc", style: TextStyle(fontSize: 18)),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BasicCalc()),
                      )
                    },
                  ),
                ),
                Padding(
                  //the padding to separate the top bar and the engineeringCalc button
                  padding: const EdgeInsets.all(10.0),
                  child: MaterialButton(
                    //this child contained the engineering pressing button styles
                    height: 100.0,
                    minWidth: 110.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: const Text("EngineeringCalc",
                        style: TextStyle(fontSize: 18)),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EngineeringCalc()),
                      )
                    },
                  ),
                ),
              ],
            ),
            Row(
              // bottom row which contained scientific and unit conversion
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  //the padding to separate the basicCalc button with scientificCalc button
                  padding: const EdgeInsets.all(10.0),
                  child: MaterialButton(
                    //this child contained the scientificCalc pressing button styles
                    height: 100.0,
                    minWidth: 180.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: const Text("ScientificCalc",
                        style: TextStyle(fontSize: 18)),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScientificCalc()),
                      )
                    },
                  ),
                ),
                Padding(
                  //the padding to separate the Engineering button on top and unit conversion button at the bottom
                  padding: const EdgeInsets.all(10.0),
                  child: MaterialButton(
                    //this child contained the unit conversion pressing button styles
                    height: 100.0,
                    minWidth: 160.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: const Text("UnitConversion",
                        style: TextStyle(fontSize: 18)),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UnitConversion()),
                      )
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
