import 'package:flutter/material.dart';

class SmartScaffold extends StatefulWidget {
  final Widget child;
  const SmartScaffold({super.key, required this.child});

  @override
  State<SmartScaffold> createState() => _SmartScaffoldState();
}

class _SmartScaffoldState extends State<SmartScaffold> with RestorationMixin {
  final _extended = RestorableBool(false);

  @override
  String? get restorationId => 'SmartScaffold';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_extended, 'extended');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(child: widget.child),
      ),
    );
  }
}
