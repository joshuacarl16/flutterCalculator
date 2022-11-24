import 'package:flutter/material.dart';
import './widgets/calcbutton.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int? firstNum;
  int? secondNum;
  String history = '';
  String textDisplay = '';
  String result = '';
  String operation = '';

  void btnClick(String btnValue) {
    if (btnValue == 'C') {
      textDisplay = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
    } else if (btnValue == 'AC') {
      textDisplay = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
      history = '';
    } else if (btnValue == '+/-') {
      if (textDisplay[0] != '-') {
        result = '-' + textDisplay;
      } else {
        result = textDisplay.substring(1);
      }
    } else if (btnValue == '<') {
      result = textDisplay.substring(0, textDisplay.length - 1);
    } else if (btnValue == '+' ||
        btnValue == '-' ||
        btnValue == 'x' ||
        btnValue == '/') {
      firstNum = int.parse(textDisplay);
      result = '';
      operation = btnValue;
    } else if (btnValue == '=') {
      secondNum = int.parse(textDisplay);
      if (operation == '+') {
        result = (firstNum! + secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        result = (firstNum! - secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'x') {
        result = (firstNum! * secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        result = (firstNum! / secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      result = int.parse(textDisplay + btnValue).toString();
    }

    setState(() {
      textDisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Calculator',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    history,
                    style: TextStyle(fontSize: 24, color: Colors.grey[500]),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    textDisplay,
                    style: TextStyle(fontSize: 70, color: Colors.white),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    txtColor: 0xddd22d2d,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                  CalculatorButton(
                    text: 'C',
                    txtColor: 0xddd22d2d,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                  CalculatorButton(
                    text: '<',
                    txtColor: 0xffffbf00,
                    txtSize: 30,
                    btnPress: btnClick,
                  ),
                  CalculatorButton(
                    text: '/',
                    txtColor: 0xd222dd2d,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '7',
                    txtColor: 0xffffffff,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                  CalculatorButton(
                    text: '8',
                    txtColor: 0xffffffff,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                  CalculatorButton(
                    text: '9',
                    txtColor: 0xffffffff,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                  CalculatorButton(
                    text: 'x',
                    txtColor: 0xd222dd2d,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '4',
                    txtColor: 0xffffffff,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                  CalculatorButton(
                    text: '5',
                    txtColor: 0xffffffff,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                  CalculatorButton(
                    text: '6',
                    txtColor: 0xffffffff,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                  CalculatorButton(
                    text: '-',
                    txtColor: 0xd222dd2d,
                    txtSize: 30,
                    btnPress: btnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '1',
                    txtColor: 0xffffffff,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                  CalculatorButton(
                    text: '2',
                    txtColor: 0xffffffff,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                  CalculatorButton(
                    text: '3',
                    txtColor: 0xffffffff,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                  CalculatorButton(
                    text: '+',
                    txtColor: 0xd222dd2d,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '+/-',
                    txtColor: 0xffffffff,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                  CalculatorButton(
                    text: '0',
                    txtColor: 0xffffffff,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                  CalculatorButton(
                    text: '.',
                    txtColor: 0xffffffff,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                  CalculatorButton(
                    text: '=',
                    txtColor: 0xd222dd2d,
                    txtSize: 25,
                    btnPress: btnClick,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
