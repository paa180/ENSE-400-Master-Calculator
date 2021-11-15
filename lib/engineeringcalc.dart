import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'potential.dart';
import 'power.dart';
import 'thermal.dart';
import 'work.dart';
import 'Energy.dart';
import 'kinetic.dart';

// the Engineering Calc class extending the stateless widget
class EngineeringCalc extends StatelessWidget {
  const EngineeringCalc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //build context function
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent, //calculator background color
      appBar: AppBar(
        title: const Text("EngineeringCalc", style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.indigo, //top bar background color and style
      ),
      body: Column(
        //the body styles
        children: <Widget>[
          Column(
              //column one the energy window not developed yet, color yellow
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: MaterialButton(
                    height: 30.0,
                    minWidth: 180.0,
                    color: Colors.yellow,
                    textColor: Colors.black,
                    child: const Text("Energy", style: TextStyle(fontSize: 20)),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Energy()),
                      )
                    },
                  ),
                ),
              ]),
          Column(
              //kinetic energy style, pressed button lead you to the window
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: MaterialButton(
                    height: 30.0,
                    minWidth: 180.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: const Text("Kinetic Energy",
                        style: TextStyle(fontSize: 20)),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Kinetic()),
                      )
                    },
                  ),
                ),
              ]),
          Column(
            //potential energy style, pressed button lead you to the window
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: MaterialButton(
                  height: 30.0,
                  minWidth: 180.0,
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: const Text("Potential Energy",
                      style: TextStyle(fontSize: 20)),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Potential()),
                    )
                  },
                ),
              ),
            ],
          ),
          Column(
              //Thermal energy style, pressed button lead you to the window
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: MaterialButton(
                    height: 30.0,
                    minWidth: 180.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: const Text("Thermal Energy",
                        style: TextStyle(fontSize: 20)),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Thermal()),
                      )
                    },
                  ),
                ),
              ]),
          Column(
            //work energy style, pressed button lead you to the window
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: MaterialButton(
                  height: 30.0,
                  minWidth: 180.0,
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child:
                      const Text("Work Energy", style: TextStyle(fontSize: 20)),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Work()),
                    )
                  },
                ),
              ),
            ],
          ),
          Column(
            //power energy style, pressed button lead you to the window
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: MaterialButton(
                    height: 30.0,
                    minWidth: 180.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: const Text("Power Energy",
                        style: TextStyle(fontSize: 20)),
                    onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Power()),
                          ),
                        }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
