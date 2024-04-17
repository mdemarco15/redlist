import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BlueCustomButton extends StatelessWidget {
  const BlueCustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.customWidth,
      this.customHeight,
      this.customFontSize});

  final String text;
  final Function() onPressed;
  final double? customWidth;
  final double? customHeight;
  final double? customFontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
          ),
          borderRadius: BorderRadius.circular(30),
          color: Colors.blue,
        ),
        width: customWidth ?? MediaQuery.of(context).size.width,
        height: customHeight ?? 51,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: customFontSize ?? 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
