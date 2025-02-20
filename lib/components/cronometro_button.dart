import 'package:flutter/material.dart';

class CronometroButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? click;

  const CronometroButton({
    super.key,
    required this.text,
    required this.icon,
    this.click,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        iconColor: Colors.white,
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        textStyle: TextStyle(fontSize: 25),
      ),
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: Icon(
              icon,
              size: 25,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
