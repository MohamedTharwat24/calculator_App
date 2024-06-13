import 'package:calculator/screens/number_formatter.dart';

class Calculations {
  static const PERIOD = '.';
  static const MULTIPLY = '*';
  static const SUBTRACT = '-';
  static const ADD = '+';
  static const DIVIDE = '/';
  static const CLEAR = 'CLEAR';
  static const EQUAL = '=';
  static const OPERATIONS = [
  Calculations.ADD,
  Calculations.MULTIPLY,
  Calculations.SUBTRACT,
  Calculations.DIVIDE,
  ];
  static double add(double a, double b) => a + b;
  static double subtract(double a, double b) => a - b;
  static double divide(double a, double b) => a / b;
  static double multiply(double a, double b) => a  * b;

}
class Calculator {
  static String? parseString(String text){
    List<String> numberToAdd ;
    double a , b , result ;
    if( text.contains(Calculations.ADD)){
      numberToAdd = text.split(Calculations.ADD);
      a = double.parse(numberToAdd[0]);
      b = double.parse(numberToAdd[1]);

      result = Calculations.add(a, b);
    }else if (text.contains(Calculations.MULTIPLY)){
      numberToAdd = text.split(Calculations.MULTIPLY);
      a = double.parse(numberToAdd[0]);
      b = double.parse(numberToAdd[1]);

      result = Calculations.multiply(a, b);

    } else if ( text.contains(Calculations.DIVIDE)){
      numberToAdd = text.split(Calculations.DIVIDE);
      a = double.parse(numberToAdd[0]);
      b = double.parse(numberToAdd[1]);

      result = Calculations.divide(a, b);
    } else if ( text.contains(Calculations.SUBTRACT)){
      numberToAdd = text.split(Calculations.SUBTRACT);
      a = double.parse(numberToAdd[0]);
      b = double.parse(numberToAdd[1]);

      result = Calculations.subtract(a, b);
    } else {
      return text ;
    }
    return NumberFormatter.format(result.toString());

  }
  static String addPeriod ( String calculatorString){
    if( calculatorString.isEmpty){
      return calculatorString = '0${Calculations.PERIOD}';
    }
    RegExp exp = new RegExp(r"\d\.");
    Iterable<Match> matches = exp.allMatches(calculatorString);
    int maxMatches = Calculator.includesOperation(calculatorString) ? 2 : 1;
    return matches.length == maxMatches
        ? calculatorString
        : calculatorString += Calculations.PERIOD;

  }
  static bool includesOperation ( String calculateString){
    for( var operation in Calculations.OPERATIONS){
      if (calculateString.contains(operation)){
        return true ;
      }
    }
    return false ;
  }

}