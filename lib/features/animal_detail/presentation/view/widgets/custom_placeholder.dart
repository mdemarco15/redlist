import 'package:code_challenge/base/utils/namespaces/images.dart';
import 'package:flutter/material.dart';

class CustomPlacholder extends StatelessWidget {
  const CustomPlacholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Images.customAsset(image: Images.logo, height: 200);
  }
}
