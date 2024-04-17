import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarIconDesktop extends StatelessWidget {
  const AppBarIconDesktop({super.key, required this.title, required this.onTap});

  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SvgPicture.asset(
          'lib/assets/icons/$title.svg',
          width: 25,
          color: Colors.white,),
      ),
    );
  }
}
