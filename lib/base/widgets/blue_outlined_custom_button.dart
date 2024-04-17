// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BlueOutlinedCustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  bool? roundedBorder;
  BlueOutlinedCustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.roundedBorder,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.blue,
            ),
            borderRadius: roundedBorder == true
                ? BorderRadius.circular(30)
                : BorderRadius.circular(10)),
        width: MediaQuery.of(context).size.width,
        height: 51,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
