import 'package:flutter/material.dart';
import './calculatorButton.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  @override
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<CalculatorApp> {
  late int firstNum;
  late int secondNum;
  String history = '';
  String textToDisplay = '';
  late String result;
  late String operation;

  void buttonOnClick(String btnValue) {
    print(btnValue);
    if (btnValue == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
    } else if (btnValue == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
      history = '';
    } else if (btnValue == '<') {
      result = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnValue == '+/-') {
      if (textToDisplay[0] != '-') {
        result = '-' + textToDisplay;
      } else {
        result = textToDisplay.substring(1);
      }
    } else if (btnValue == '+' ||
        btnValue == '-' ||
        btnValue == 'X' ||
        btnValue == '/') {
      firstNum = int.parse(textToDisplay);
      result = '';
      operation = btnValue;
      secondNum = int.parse(textToDisplay);
    } else if (btnValue == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        result = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        result = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        result = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        result = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      result = int.parse(textToDisplay + btnValue).toString();
    }

    setState(() {
      textToDisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        backgroundColor: Color(0xFF000000),
        appBar: AppBar(
          title: Text('Calculator'),
          backgroundColor: Color(0xFF000000),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 50, 20),
                  child: Text(
                    // '97X4',
                    history,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: Text(
                    // '789',
                    textToDisplay,
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    fillcolor: 0xFFDAD5AB,
                    textcolor: 0xFF000000,
                    textsize: 23,
                    callback: buttonOnClick,
                    fontW: FontWeight.bold,
                  ),
                  CalculatorButton(
                    text: 'C',
                    fillcolor: 0xFFDAD5AB,
                    textcolor: 0xFF000000,
                    textsize: 27,
                    callback: buttonOnClick,
                    fontW: FontWeight.bold,
                  ),
                  CalculatorButton(
                    text: '<',
                    fillcolor: 0xFFDAD5AB,
                    textcolor: 0xFF000000,
                    textsize: 27,
                    callback: buttonOnClick,
                    fontW: FontWeight.bold,
                  ),
                  CalculatorButton(
                    text: '/',
                    fillcolor: 0xFF950101,
                    textcolor: 0xFFFFFFFF,
                    textsize: 30,
                    callback: buttonOnClick,
                    fontW: FontWeight.bold,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                      text: '9',
                      fillcolor: 0xFF1B1717,
                      textcolor: 0xFFFFFFFF,
                      textsize: 30,
                      callback: buttonOnClick,
                      fontW: FontWeight.normal),
                  CalculatorButton(
                      text: '8',
                      fillcolor: 0xFF1B1717,
                      textcolor: 0xFFFFFFFF,
                      textsize: 30,
                      callback: buttonOnClick,
                      fontW: FontWeight.normal),
                  CalculatorButton(
                      text: '7',
                      fillcolor: 0xFF1B1717,
                      textcolor: 0xFFFFFFFF,
                      textsize: 30,
                      callback: buttonOnClick,
                      fontW: FontWeight.normal),
                  CalculatorButton(
                    text: 'X',
                    fillcolor: 0xFF950101,
                    textcolor: 0xFFFFFFFF,
                    textsize: 30,
                    callback: buttonOnClick,
                    fontW: FontWeight.bold,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                      text: '6',
                      fillcolor: 0xFF1B1717,
                      textcolor: 0xFFFFFFFF,
                      textsize: 30,
                      callback: buttonOnClick,
                      fontW: FontWeight.normal),
                  CalculatorButton(
                      text: '5',
                      fillcolor: 0xFF1B1717,
                      textcolor: 0xFFFFFFFF,
                      textsize: 30,
                      callback: buttonOnClick,
                      fontW: FontWeight.normal),
                  CalculatorButton(
                      text: '4',
                      fillcolor: 0xFF1B1717,
                      textcolor: 0xFFFFFFFF,
                      textsize: 30,
                      callback: buttonOnClick,
                      fontW: FontWeight.normal),
                  CalculatorButton(
                    text: '-',
                    fillcolor: 0xFF950101,
                    textcolor: 0xFFFFFFFF,
                    textsize: 30,
                    callback: buttonOnClick,
                    fontW: FontWeight.bold,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                      text: '3',
                      fillcolor: 0xFF1B1717,
                      textcolor: 0xFFFFFFFF,
                      textsize: 30,
                      callback: buttonOnClick,
                      fontW: FontWeight.normal),
                  CalculatorButton(
                      text: '2',
                      fillcolor: 0xFF1B1717,
                      textcolor: 0xFFFFFFFF,
                      textsize: 30,
                      callback: buttonOnClick,
                      fontW: FontWeight.normal),
                  CalculatorButton(
                      text: '1',
                      fillcolor: 0xFF1B1717,
                      textcolor: 0xFFFFFFFF,
                      textsize: 30,
                      callback: buttonOnClick,
                      fontW: FontWeight.normal),
                  CalculatorButton(
                    text: '+',
                    fillcolor: 0xFF950101,
                    textcolor: 0xFFFFFFFF,
                    textsize: 30,
                    callback: buttonOnClick,
                    fontW: FontWeight.bold,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                      text: '+/-',
                      fillcolor: 0xFF1B1717,
                      textcolor: 0xFFFFFFFF,
                      textsize: 27,
                      callback: buttonOnClick,
                      fontW: FontWeight.normal),
                  CalculatorButton(
                      text: '0',
                      fillcolor: 0xFF1B1717,
                      textcolor: 0xFFFFFFFF,
                      textsize: 30,
                      callback: buttonOnClick,
                      fontW: FontWeight.normal),
                  CalculatorButton(
                    text: '00',
                    fillcolor: 0xFF1B1717,
                    textcolor: 0xFFFFFFFF,
                    textsize: 27,
                    callback: buttonOnClick,
                    fontW: FontWeight.normal,
                  ),
                  CalculatorButton(
                    text: '=',
                    fillcolor: 0xFF950101,
                    textcolor: 0xFFFFFFFF,
                    textsize: 30,
                    callback: buttonOnClick,
                    fontW: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
