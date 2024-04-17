import 'package:flutter/material.dart';

class LoginTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  const LoginTextField({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 167, 174, 190),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Center(
          child: TextFormField(
            controller: widget.controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 205, 205, 205),
                  fontWeight: FontWeight.normal),
            ),
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
