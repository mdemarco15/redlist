import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class BuildInfoData extends StatelessWidget {
  final String value;

  const BuildInfoData({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Html(data: value);
  }
}
