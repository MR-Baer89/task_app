import 'package:flutter/material.dart';

class S4524 extends StatelessWidget {
  const S4524({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ShowHideNameWidget();
  }
}

class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({super.key});

  @override
  ShowHideNameWidgetState createState() => ShowHideNameWidgetState();
}

class ShowHideNameWidgetState extends State<ShowHideNameWidget> {
  String name = '';
  String buttonText = "Name anzeigen";

  void toggleName() {
    setState(() {
      if (name.isEmpty) {
        name = "Mr. Bär";
        buttonText = "Name verstecken";
      } else {
        name = '';
        buttonText = "Name anzeigen";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name, // Zeigt den aktuellen Zustand des Namens an (anfangs leer)
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: toggleName,
          child: Text(buttonText),
        ),
      ],
    );
  }
}
