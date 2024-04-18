import 'package:code_challenge/base/extensions/build_context_extension.dart';
import 'package:code_challenge/base/utils/namespaces/images.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  final Function logout;
  final Function(int route) switchPage;
  const CustomDrawer({
    super.key,
    required this.logout,
    required this.switchPage,
  });

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SizedBox(
              height: context.width * 0.45,
              width: context.height * 0.15,
              child: Images.customAsset(
                image: Images.logo,
                width: context.width * 0.60,
                height: context.height * 0.25,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          const SizedBox(height: 22),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.42),
            child: drawerBuilder(
              'Home',
              Icons.home,
              null,
              () => widget.switchPage(0),
              Colors.red,
            ),
          ),
          const SizedBox(height: 22),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.42),
            child: drawerBuilder(
              'Logout',
              Icons.logout,
              null,
              () => widget.logout(),
              Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

Widget drawerBuilder(String text, IconData leftIcon, IconData? rightIcon, Function() onTap, Color color) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  leftIcon,
                  size: 30,
                  color: color,
                ),
                const SizedBox(width: 25),
                Text(
                  text,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  rightIcon,
                  size: 30,
                  color: color,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
