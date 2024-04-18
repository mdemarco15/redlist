import 'package:code_challenge/base/utils/namespaces/app_colors.dart';
import 'package:code_challenge/base/utils/namespaces/app_styles.dart';
import 'package:code_challenge/features/home/domain/entity/animal_entity.dart';
import 'package:flutter/material.dart';

class AnimalItem extends StatelessWidget {
  final AnimalEntity animal;
  final Function(int id) onTap;

  const AnimalItem({
    super.key,
    required this.animal,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(animal.taxonid!),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ], borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  animal.taxonid.toString(),
                  style: AppStyles.textStyleExtraLarge.copyWith(color: AppColors.primary),
                ),
                Text(animal.scientificName ?? ''),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
