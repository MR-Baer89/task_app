import 'package:flutter/material.dart';

class S4535 extends StatelessWidget {
  const S4535({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ColoredRectangle();
  }
}

class ColoredRectangle extends StatelessWidget {
  const ColoredRectangle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildColoredContainer(Colors.red),
            buildColoredContainer(Colors.green),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildColoredContainer(Colors.blue),
            buildColoredContainer(Colors.yellow),
          ],
        ),
      ],
    );
  }

  Widget buildColoredContainer(Color color) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}
