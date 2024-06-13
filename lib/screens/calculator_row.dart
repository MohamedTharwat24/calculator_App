import 'package:calculator/screens/calculator_button.dart';
import 'package:flutter/cupertino.dart';

class CalculatorRow extends StatelessWidget {
  const CalculatorRow({super.key , required this.buttons , required this.onTap});
  final List<String> buttons ;
  final CalculatorButtonTapCallback onTap ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: rowBottons(),
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }
  List<Widget> rowBottons(){
    List <Widget>rowBottons = [];
    buttons.forEach((String buttontext) {
      rowBottons.add(
        CalculatorButton(
            text: buttontext,
            onTap: onTap
        ),
      );
    });
    return rowBottons ;
  }
}
