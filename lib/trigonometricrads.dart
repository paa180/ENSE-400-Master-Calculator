import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class TrigonometricRad extends StatefulWidget {
  const TrigonometricRad({Key? key}) : super(key: key);

  @override
  _TrigonometricRadState createState() => _TrigonometricRadState();
}

class _TrigonometricRadState extends State<TrigonometricRad> {
  String result = ""; //the calculated result
  String expression = ""; //expression contained in math_expressions package
  String input = ""; //the input from the user

  pressedButton(String btnVal) {
    //pressed button function containing the scientific calculator logic in rad
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
            expression.replaceAll('x', '*'); //Multiplication expression
        expression = expression.replaceAll('÷', '/'); //division expression
        expression =
            expression.replaceAll('√', 'sqrt'); //square root expression
        expression = expression.replaceAll('log', 'log'); //log expression
        expression = expression.replaceAll('ln', 'ln'); //log expression
        // expression = expression.replaceAll('(', '(');
        //expression = expression.replaceAll(')', ')');
        expression =
            expression.replaceAll('π', '3.1415926535897932 '); //pi expression

        try {
          //catch error
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
        margin: const EdgeInsets.all(5.0),
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
              fontSize: 20.0,
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
          title: const Text("ScientificCalc in Rad",
              style: TextStyle(fontSize: 30)),
          backgroundColor: Colors.indigo, //top bar background color
        ),
        body: Column(
          //the scientific calculator body in column
          children: <Widget>[
            Container(
              //container alignment and style
              alignment: Alignment.bottomCenter,
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Column(
                //the calculator input window and display style
                children: <Widget>[
                  Text(
                    input,
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    result,
                    style: const TextStyle(fontSize: 20),
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
              //the column with all the keys of the keyboard
              children: <Widget>[
                Row(
                  //first row
                  children: <Widget>[
                    calBtn("1"),
                    calBtn("2"),
                    calBtn("3"),
                    calBtn("4"),
                  ],
                ),
                Row(
                  //second row
                  children: <Widget>[
                    calBtn("5"),
                    calBtn("6"),
                    calBtn("7"),
                    calBtn("8"),
                  ],
                ),
                Row(
                  //third row
                  children: <Widget>[
                    calBtn("9"),
                    calBtn("0"),
                    calBtn("."),
                    calBtn("⌫"),
                  ],
                ),
                Row(
                  //fourth row
                  children: <Widget>[
                    calBtn("÷"),
                    calBtn("+"),
                    calBtn("x"),
                    calBtn("-"),
                  ],
                ),
                Row(
                  //fifth row
                  children: <Widget>[
                    calBtn("sin"),
                    calBtn("cos"),
                    calBtn("tan"),
                    calBtn("log"),
                  ],
                ),
                Row(
                  //sixth row
                  children: <Widget>[
                    calBtn("ln"),
                    calBtn("^"),
                    calBtn("( "),
                    calBtn(")"),
                  ],
                ),
                Row(
                  //seventh row
                  children: <Widget>[
                    calBtn("CL"),
                    calBtn("√"),
                    calBtn("π"),
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
