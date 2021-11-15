import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

// the basicCalc class extending the stateful widget
class BasicCalc extends StatefulWidget {
  const BasicCalc({Key? key}) : super(key: key);

  @override
  BasicCalcState createState() => BasicCalcState();
}

//BasicCalcState class extends basicCalc
class BasicCalcState extends State<BasicCalc> {
  String result = ""; //the calculated result
  String expression = ""; //expression contained in math_expressions package
  String input = ""; //the input from the user

  pressedButton(String btnVal) {
    //pressed button function containing the basic calculator logic
    setState(() {
      if (btnVal == "CL") {
        input = "0";
        result = "0";
      } else if (btnVal == "⌫") {
        input = input.substring(0, input.length - 1);
        if (input == "") input = "0";
      } else if (btnVal == "=") {
        expression = input;
        expression =
            expression.replaceAll('x', '*'); //multiplication expression
        expression = expression.replaceAll('÷', '/'); //division expression
        expression =
            expression.replaceAll('√', 'sqrt'); //square root expression

        try {
          //catch errors
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
          title: const Text("BasicCalc", style: TextStyle(fontSize: 40)),
          backgroundColor: Colors.indigo, //top bar background color
        ),
        body: Column(
          //the basic calculator body in column
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
                    style: const TextStyle(fontSize: 20), //text input and style
                  ),
                  Text(
                    result,
                    style: const TextStyle(
                        fontSize: 20), //text output or result and style
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
                    calBtn("CL"),
                    calBtn("⌫"),
                    calBtn("^"),
                    calBtn("÷"),
                  ],
                ),
                Row(
                  //second row
                  children: <Widget>[
                    calBtn("7"),
                    calBtn("8"),
                    calBtn("9"),
                    calBtn("x"),
                  ],
                ),
                Row(
                  //third row
                  children: <Widget>[
                    calBtn("4"),
                    calBtn("5"),
                    calBtn("6"),
                    calBtn("+"),
                  ],
                ),
                Row(
                  //fourth row
                  children: <Widget>[
                    calBtn("1"),
                    calBtn("2"),
                    calBtn("3"),
                    calBtn("-"),
                  ],
                ),
                Row(
                  //fifth row
                  children: <Widget>[
                    calBtn("0"),
                    calBtn("."),
                    calBtn("√"),
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
