import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

//work class extending stateful widget
class Work extends StatefulWidget {
  const Work({Key? key}) : super(key: key);

  @override
  _WorkState createState() => _WorkState();
}

//work state class extend state<work>
class _WorkState extends State<Work> {
  String result = ""; //calculated result
  String expression = ""; //expression contained in math_expressions package
  String input = ""; //input from the user

  pressedButton(String btnVal) {
    //pressed button function containing the basic calculator logic
    setState(() {
      if (btnVal == "CL") {
        input = "";
        result = "";
      } else if (btnVal == "⌫") {
        input = input.substring(0, input.length - 1);
        if (input == "") input = "";
      } else if (btnVal == "=") {
        expression = input;
        expression =
            expression.replaceAll('x', '*'); //multiplication expression
        expression = expression.replaceAll('÷', '/'); //division expression
        expression =
            expression.replaceAll('√', 'sqrt'); //square root expression

        try {
          //to catch the error
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          result = "Error";
        }
      } else {
        if (input == "0") {
          input = btnVal;
        } else {
          input = input + btnVal;
        }
      }
    });
  }

  Widget calBtn(String btnVal) {
    //calBtn function with all style of the keyboard
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(color: Colors.grey[300], boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(2.0, 2.0),
            blurRadius: 4.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-2.0, -2.0),
            blurRadius: 4.0,
            spreadRadius: 1.0,
          ),
        ]),
        child: MaterialButton(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            btnVal,
            style: const TextStyle(
              fontSize: 25.0,
            ),
          ),
          onPressed: () => pressedButton(btnVal),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent, //background color
        appBar: AppBar(
          title: const Text("Work Energy", style: TextStyle(fontSize: 40)),
          backgroundColor: Colors.indigo, //top background color and styles
        ),
        body: Column(
          //the power calculator body in column
          children: <Widget>[
            Row(
              //the first row in column, and this containing all information of the problem
              children: [
                const Padding(padding: EdgeInsets.all(4.0)),
                Container(
                  //container style
                  alignment: Alignment.topLeft,
                  height: 110.0,
                  width: 250.0,
                  color: Colors.white,
                  child: const Text(
                    'Energy: work\n'
                    'w = work done(J)\n'
                    'F = force (N)\n'
                    'd = distance (m)',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.all(10.0)), //separating padding
                Container(
                  //container for equation, and its style
                  alignment: Alignment.topLeft,
                  height: 40.0,
                  width: 130,
                  color: Colors.white,
                  child: const Text('w = Fd', style: TextStyle(fontSize: 30.0)),
                ),
              ],
            ),
            Container(
              //container for input, display and the style of
              alignment: Alignment.bottomCenter,
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Column(
                children: <Widget>[
                  Text(
                    input,
                    style: const TextStyle(fontSize: 20), //text input and style
                  ),
                  Text(
                    result,
                    style: const TextStyle(
                        fontSize: 20), //text output or result or out and style
                  ),
                ],
              ),
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(width: 40, color: Colors.lightBlue),
              ),
            ),
            const Expanded(
              //expanded divider
              child: Divider(),
            ),
            Column(
              //columns with all the keys and the keyboard
              children: <Widget>[
                Row(
                  //first row of the keyboard
                  children: <Widget>[
                    calBtn("1"),
                    calBtn("2"),
                    calBtn("3"),
                    calBtn("4"),
                  ],
                ),
                Row(
                  //second row of the keyboard
                  children: <Widget>[
                    calBtn("5"),
                    calBtn("6"),
                    calBtn("7"),
                    calBtn("8"),
                  ],
                ),
                Row(
                  //third row of the keyboard
                  children: <Widget>[
                    calBtn("9"),
                    calBtn("0"),
                    calBtn("+"),
                    calBtn("-"),
                  ],
                ),
                Row(
                  //fourth row of the keyboard
                  children: <Widget>[
                    calBtn("x"),
                    calBtn("÷"),
                    calBtn("^"),
                    calBtn("√"),
                  ],
                ),
                Row(
                  //fifth row of the keyboard
                  children: <Widget>[
                    calBtn("."),
                    calBtn("⌫"),
                    calBtn("CL"),
                    calBtn("="),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
