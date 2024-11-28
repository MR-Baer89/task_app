import 'package:flutter/material.dart';

class S5411 extends StatelessWidget {
  const S5411({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        try {
          var result = 10 ~/ 0;
          print('Ergebnis: $result');
        } catch (error) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Ein Fehler ist auf getreten: ${error.toString()}'),
          ));
        }
      },
      child: const Text('Drücke mich'),
    );
  }
}
