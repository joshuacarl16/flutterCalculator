import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int txtColor;
  final txtSize;
  final Function btnPress;

  const CalculatorButton({
    this.text = '',
    this.txtColor = 0,
    this.txtSize,
    required this.btnPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: SizedBox(
        width: 70,
        height: 70,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              side: BorderSide(width: 1.0, color: Colors.grey.shade700),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              backgroundColor: Colors.grey[900],
              elevation: 5),
          onPressed: () {
            btnPress(text);
          },
          child: Text(
            text,
            style: TextStyle(
              color: Color(txtColor),
              fontSize: txtSize,
            ),
          ),
        ),
      ),
    );
  }
}
