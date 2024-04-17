import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarItem extends StatelessWidget {
  final bool isSelectedPage;
  final String itemImageName;
  final String itemName;
  const BottomNavBarItem(
      {super.key, 
      required this.isSelectedPage,
      required this.itemImageName,
      required this.itemName,
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 25,
          child: SvgPicture.asset(
            'lib/assets/icons/$itemImageName.svg',
            width: 35,
            color: isSelectedPage ? Colors.white : Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: Text(
            itemName,
            style: TextStyle(
                color: isSelectedPage ? Colors.white : Colors.grey,
                fontSize: 11),
          ),
        ),
      ],
    );
  }
}
