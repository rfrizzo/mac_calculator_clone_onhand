import 'package:calculator/components/button.dart';
import 'package:calculator/components/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;
  const Keyboard({required this.cb, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          ButtonRow(buttons: [
            const SizedBox(
              height: 1,
            ),
            Button(
              cb: cb,
              color: Button.DARK,
              text: 'AC',
              flex: 2,
            ),
            Button(
              text: '%',
              cb: cb,
              color: Button.DARK,
            ),
            Button.operation(text: '/', cb: cb),
          ]),
          ButtonRow(buttons: [
            Button(text: '7', cb: cb),
            Button(text: '8', cb: cb),
            Button(text: '9', cb: cb),
            Button.operation(text: 'X', cb: cb)
          ]),
          ButtonRow(buttons: [
            Button(text: '4', cb: cb),
            Button(text: '5', cb: cb),
            Button(text: '6', cb: cb),
            Button.operation(text: '-', cb: cb)
          ]),
          ButtonRow(buttons: [
            Button(text: '1', cb: cb),
            Button(text: '2', cb: cb),
            Button(text: '3', cb: cb),
            Button.operation(text: '+', cb: cb)
          ]),
          ButtonRow(buttons: [
            const SizedBox(
              height: 1,
            ),
            Button(text: '0', flex: 2, cb: cb),
            Button(text: '.', cb: cb),
            Button.operation(text: '=', cb: cb),
          ]),
        ],
      ),
    );
  }
}
