import 'package:flutter/material.dart';

class Unitconversion extends StatefulWidget {
  const Unitconversion({Key? key}) : super(key: key);

  @override
  _UnitconversionState createState() => _UnitconversionState();
}

class _UnitconversionState extends State<Unitconversion> {
  @override
  void initState() {
    userInput = 0;
    super.initState();
  }

  final List<String> measures = [
    'Meters',
    'Kilometers',
    'Grams',
    'Kilograms',
    'Feets',
    'Miles',
    'ounces',
    'celcius',
    'fahrenheit',
    'kelvin'
  ];
  final Map<String, int> measuresMap = {
    'Meters': 0,
    'Kilometers': 1,
    'Grams': 2,
    'Kilograms': 3,
    'Feets': 4,
    'Miles': 5,
    'pounds': 6,
    'ounces': 7,
    'celcius': 8,
    'fahrenheit': 9,
    'kelvin': 10
  };

  dynamic formulas = {
    '0': [1, 0.001, 0, 0, 3.280, 0.0006213, 0],
    '1': [1000, 1, 0, 0, 3280.84, 0.6213, 0, 0],
    '2': [0, 0, 1, 0.0001, 0, 0, 0.00220, 0.03],
    '3': [0, 0, 1000, 1, 0, 0, 2.2048, 35.274],
    '4': [0.0348, 0.00030, 0, 0, 1, 0.000189],
    '5': [1609.34, 1.60934, 0, 0, 5280, 1, 0, 0],
    '6': [0, 0, 453.592, 0.4535, 0, 0, 1, 16],
    '7': [0, 0, 28.3495, 0.02834, 3.28084, 0, 0.1],
    '8': [0, 0, 0, 0, 0, 0, 0, 0, 1, 100, 100],
    '9': [0, 0, 0, 0, 0, 0, 0, 0, 212, 1, 212],
    '10': [0, 0, 0, 0, 0, 0, 0, 0, 255.928, 273.15, 310.928]
  };

  void convert(double value, String from, String to) {
    int? nFrom = measuresMap[from];
    int? nTo = measuresMap[to];
    var multi = formulas[nFrom.toString()][nTo];
    var result = value * multi;

    if (result == 0) {
      resultMessage = ('Can not performed this conversion');
    } else {
      resultMessage =
          '${userInput.toString()} $_startMeasures are ${result.toString()} $_convertMeasures';
    }
    setState(() {
      resultMessage = resultMessage;
    });
  }

  late double userInput;
  // ignore: prefer_typing_uninitialized_variables
  var _startMeasures;
  // ignore: prefer_typing_uninitialized_variables
  var _convertMeasures;
  // ignore: prefer_typing_uninitialized_variables
  var resultMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
          title: const Text("Unit Conversion", style: TextStyle(fontSize: 40)),
          backgroundColor: Colors.indigo),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: TextField(
                  onChanged: (text) {
                    var input = double.tryParse(text);
                    if (input != null) {
                      setState(() {
                        userInput = input;
                      });
                    }
                  },
                  style: const TextStyle(fontSize: 22, color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      hintText: 'Enter the number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'From',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      value: _startMeasures,
                      isExpanded: true,
                      dropdownColor: Colors.brown,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.amber),
                      hint: const Text(
                        ' select a Unit',
                        style: TextStyle(color: Colors.amber, fontSize: 20),
                      ),
                      items: measures.map((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _startMeasures = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'To',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      value: _convertMeasures,
                      isExpanded: true,
                      dropdownColor: Colors.brown,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.amber),
                      hint: const Text(
                        ' Select a Unit',
                        style: TextStyle(color: Colors.amber, fontSize: 20),
                      ),
                      items: measures.map((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _convertMeasures = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {
                  if (_startMeasures.isEmpty ||
                      _convertMeasures.isEmpty ||
                      userInput == 0) {
                    return;
                  } else {
                    convert(userInput, _startMeasures, _convertMeasures);
                  }
                },
                child: Container(
                  alignment: AlignmentDirectional.center,
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    'Convert',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.amber),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Container(
                  alignment: Alignment.center,
                  height: 100.0,
                  width: 300.0,
                  color: Colors.white,
                  // ignore: unnecessary_new
                  child: new Text(
                    (resultMessage == null) ? '' : resultMessage,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
