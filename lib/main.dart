import 'package:flutter/material.dart';
import 'package:mc/scientificcalc.dart';
import 'package:mc/unitconversion.dart';
import 'engineeringcalc.dart';
import 'basiccalc.dart';

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
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
              child: MaterialButton(
                // this child contained the basic pressing button styles
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: const Text("Basic Calculator",
                    style: TextStyle(fontSize: 19)),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BasicCalc('true')),
                  )
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
              child: MaterialButton(
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: const Text("Engineering Calculator",
                    style: TextStyle(fontSize: 19)),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Engineeringcalc()),
                  )
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
              child: MaterialButton(
                //this child contained the engineering pressing button styles
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: const Text("Scientific Calculator",
                    style: TextStyle(fontSize: 19)),
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
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
              child: MaterialButton(
                //this child contained the engineering pressing button styles
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: const Text("Unit Conversion",
                    style: TextStyle(fontSize: 19)),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Unitconversion()),
                  )
                },
              ),
            ),
          ],
        ));
  }
}
