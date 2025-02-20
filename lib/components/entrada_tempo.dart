import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../store/pomodoro.store.dart';

class EntradaTempo extends StatelessWidget {
  final String title;
  final int value;
  final void Function()? inc;
  final void Function()? dec;

  const EntradaTempo({
    super.key,
    required this.title,
    required this.value,
    this.inc,
    this.dec,
  });

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: dec,
              child: Icon(
                Icons.arrow_downward,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                backgroundColor: store.estaTrabalhando() ? Colors.red : Colors.green,
                iconColor: Colors.white,
              ),
            ),
            Text(
              '$value min',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(
              onPressed: inc,
              child: Icon(
                Icons.arrow_upward,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                backgroundColor: store.estaTrabalhando() ? Colors.red : Colors.green,
                iconColor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
