import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:code_challenge/features/main_screen/presentation/view/widgets/botton_nav_bar_item.dart';

class BottomNavBarCustom extends StatelessWidget {
  const BottomNavBarCustom({super.key, required this.switchPage, required this.selectedBottomBarIndex});

  final Function(int) switchPage;
  final RxInt selectedBottomBarIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 85.0,
      child: Stack(
        children: [
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 85,
                decoration: BoxDecoration(color: const Color.fromARGB(0, 102, 102, 102).withOpacity(0.4)),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => switchPage(0),
                child: Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 4,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: BottomNavBarItem(
                      itemImageName: 'home',
                      itemName: 'Home',
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => switchPage(1),
                child: Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 4,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: BottomNavBarItem(
                      itemImageName: 'settings',
                      itemName: 'Impostazioni',
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
