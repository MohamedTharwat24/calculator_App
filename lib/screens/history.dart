import 'package:calculator/screens/calculator.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key,required this.operations});
  final List< String> operations ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
        centerTitle: false,
      ),
      body: Center(
        child: _operationsList(operations),
      ),

    );
  }
  Widget _operationsList( List<String> operations){
    return ListView.builder(
        itemCount: operations.length,
        itemBuilder: (BuildContext context , int i ){
          return ListTile(
            title: Text(operations[i]),
            onTap: (){
              Navigator.pop( context , operations[i]);
            },
            leading: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                  Calculator.parseString(operations[i])!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              ),
            ),
          );

        });

  }
}
