import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);
  final String text;
  final int flex;
  final Color color;
  final void Function(String) cb;

  const Button({
    this.color = DEFAULT,
    this.flex = 1,
    required this.cb,
    required this.text,
    super.key,
  });

  const Button.operation({
    this.color = OPERATION,
    this.flex = 1,
    required this.cb,
    required this.text,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () => cb(text),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
