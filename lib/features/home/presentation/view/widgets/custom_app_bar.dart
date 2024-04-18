import 'package:code_challenge/base/utils/namespaces/app_colors.dart';
import 'package:code_challenge/base/utils/namespaces/app_styles.dart';
import 'package:code_challenge/base/utils/namespaces/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.iconMenuPressed,
    required this.showHamburgerIcon,
    this.showArrowBack,
    this.title,
  });

  final Function() iconMenuPressed;
  final bool showHamburgerIcon;
  final bool? showArrowBack;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              showArrowBack ?? false
                  ? Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(Icons.arrow_back_ios_new)),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: Images.customAsset(
                        image: Images.logo,
                      ),
                    ),
              Text(
                title ?? '',
                style: AppStyles.textStyleExtraLarge.copyWith(color: AppColors.primary),
              )
            ],
          ),
          showHamburgerIcon
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: iconMenuPressed,
                          icon: const Icon(
                            Icons.menu,
                            color: AppColors.cardPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
