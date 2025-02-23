import 'package:flutter/cupertino.dart';

class NumberDisplay extends StatelessWidget {
  const NumberDisplay({super.key , this.value=""});
  final String value ;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(value,
      style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
      ],
    ),
    );
  }
}
