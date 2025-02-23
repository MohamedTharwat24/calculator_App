import 'package:calculator/screens/calculator.dart';
import 'package:calculator/screens/calculator_button.dart';
import 'package:calculator/screens/calculator_row.dart';
import 'package:flutter/cupertino.dart';

class CalculatorButtons extends StatelessWidget {
   CalculatorButtons({super.key , required this.onTap});
  final CalculatorButtonTapCallback onTap ;
  final calculatorButtonRows = [
    ['7', '8', '9', Calculations.DIVIDE],
    ['4', '5', '6', Calculations.MULTIPLY],
    ['1', '2', '3', Calculations.SUBTRACT],
    [Calculations.PERIOD, '0', '00', Calculations.ADD],
    [Calculations.CLEAR, Calculations.EQUAL]
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: calculatorButtonRows.map((calculatorRowButtons) {
          return CalculatorRow(
            buttons: calculatorRowButtons,
            onTap: onTap,
          );
        }).toList()
    );
  }
}
