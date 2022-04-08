import 'package:flutter/material.dart';
import 'accelerationcalc.dart';
import 'angularvelocity.dart';
import 'area.dart';
import 'charge.dart';
import 'electricfield.dart';
import 'electromotivecalc.dart';
import 'energycalc.dart';
import 'frequencycalc.dart';
import 'interest.dart';
import 'potential.dart';
import 'power.dart';
import 'pressurecalc.dart';
import 'resistance.dart';
import 'thermal.dart';
import 'velocitycalc.dart';
import 'voltcalc.dart';
import 'volumne.dart';
import 'work.dart';
import 'kinetic.dart';
import 'densitycalc.dart';

// the Engineering Calc class extending the stateless widget
class Engineeringcalc extends StatelessWidget {
  const Engineeringcalc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //build context function
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent, //calculator background color
      appBar: AppBar(
        title: const Text("Engineering", style: TextStyle(fontSize: 25)),
        backgroundColor: Colors.indigo, //top bar background color and style
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: [
          Column(
              //kinetic energy style, pressed button lead you to the window
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: MaterialButton(
                    height: 80.0,
                    minWidth: 100.0,
                    color: Colors.orangeAccent,
                    textColor: Colors.white,
                    child: const Text(" Definitions",
                        style: TextStyle(fontSize: 12)),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Energycalc()),
                      )
                    },
                  ),
                ),
              ]),
          Column(
              //kinetic energy style, pressed button lead you to the window
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: MaterialButton(
                    height: 80.0,
                    minWidth: 100.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: const Text("Kinetic Energy",
                        style: TextStyle(fontSize: 12)),
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: MaterialButton(
                  height: 80,
                  minWidth: 100.0,
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: const Text("Potential Energy",
                      style: TextStyle(fontSize: 12)),
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: MaterialButton(
                    height: 80.0,
                    minWidth: 100.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: const Text("Thermal Energy",
                        style: TextStyle(fontSize: 12)),
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: MaterialButton(
                  height: 80.0,
                  minWidth: 100.0,
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child:
                      const Text("Work Energy", style: TextStyle(fontSize: 12)),
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: MaterialButton(
                    height: 80.0,
                    minWidth: 100.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: const Text("Power Energy",
                        style: TextStyle(fontSize: 12)),
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
          Column(
            //power energy style, pressed button lead you to the window
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: MaterialButton(
                    height: 80.0,
                    minWidth: 100.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child:
                        const Text("Voltage", style: TextStyle(fontSize: 12)),
                    onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Voltcalc()),
                          ),
                        }),
              ),
            ],
          ),
          Column(
            //power energy style, pressed button lead you to the window
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: MaterialButton(
                    height: 80.0,
                    minWidth: 100.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child:
                        const Text("Density", style: TextStyle(fontSize: 12)),
                    onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Densitycalc()),
                          ),
                        }),
              ),
            ],
          ),
          Column(
            //power energy style, pressed button lead you to the window
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: MaterialButton(
                    height: 80.0,
                    minWidth: 100.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child:
                        const Text("Pressure", style: TextStyle(fontSize: 12)),
                    onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Pressurecalc()),
                          ),
                        }),
              ),
            ],
          ),
          Column(
            //power energy style, pressed button lead you to the window
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: MaterialButton(
                    height: 80.0,
                    minWidth: 100.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: const Text("Electromotive",
                        style: TextStyle(fontSize: 12)),
                    onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Electromotivecalc()),
                          ),
                        }),
              ),
            ],
          ),
          Column(
            //power energy style, pressed button lead you to the window
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: MaterialButton(
                    height: 80.0,
                    minWidth: 100.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child:
                        const Text("Frequency", style: TextStyle(fontSize: 12)),
                    onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Frequencycalc()),
                          ),
                        }),
              ),
            ],
          ),
          Column(
            //power energy style, pressed button lead you to the window
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: MaterialButton(
                    height: 80.0,
                    minWidth: 100.0,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child:
                        const Text("Velocity", style: TextStyle(fontSize: 12)),
                    onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Velocitycalc()),
                          ),
                        }),
              ),
            ],
          ),
          Column(
              //power energy style, pressed button lead you to the window
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: MaterialButton(
                      height: 80.0,
                      minWidth: 100.0,
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      child: const Text("Acceleration",
                          style: TextStyle(fontSize: 12)),
                      onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Accelerationcalc()),
                            ),
                          }),
                ),
              ]),
          Column(
              //power energy style, pressed button lead you to the window
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: MaterialButton(
                      height: 80.0,
                      minWidth: 100.0,
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      child: const Text("Electric Field",
                          style: TextStyle(fontSize: 12)),
                      onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Electricfield()),
                            ),
                          }),
                ),
              ]),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: MaterialButton(
                  height: 80.0,
                  minWidth: 100.0,
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: const Text("Charge", style: TextStyle(fontSize: 12)),
                  onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Charge()),
                        ),
                      }),
            ),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: MaterialButton(
                  height: 80.0,
                  minWidth: 100.0,
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: const Text("Volume", style: TextStyle(fontSize: 12)),
                  onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Volume()),
                        ),
                      }),
            ),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: MaterialButton(
                  height: 80.0,
                  minWidth: 100.0,
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: const Text("Area ", style: TextStyle(fontSize: 12)),
                  onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Area()),
                        ),
                      }),
            ),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: MaterialButton(
                  height: 80.0,
                  minWidth: 100.0,
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: const Text("Interest", style: TextStyle(fontSize: 12)),
                  onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Interest()),
                        ),
                      }),
            ),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: MaterialButton(
                  height: 80.0,
                  minWidth: 100.0,
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: const Text("Angular Velocity",
                      style: TextStyle(fontSize: 12)),
                  onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AngularVelocity()),
                        ),
                      }),
            ),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: MaterialButton(
                  height: 80.0,
                  minWidth: 100.0,
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child:
                      const Text("Resistance", style: TextStyle(fontSize: 12)),
                  onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Resistance()),
                        ),
                      }),
            ),
          ]),
        ],
      ),
    );
  }
}
