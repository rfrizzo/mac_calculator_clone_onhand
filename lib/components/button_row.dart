import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  final List<Widget> buttons;
  const ButtonRow({
    required this.buttons,
    super.key,
  });

  const ButtonRow.big({
    required this.buttons,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 1),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: buttons.fold([], (list, b) {
            list.isEmpty
                ? list.add(b)
                : list.addAll([
                    const SizedBox(
                      width: 1,
                    ),
                    b
                  ]);
            return list;
          }),
        ),
      ),
    );
  }
}
