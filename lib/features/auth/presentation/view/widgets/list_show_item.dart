import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:code_challenge/base/utils/namespaces/app_colors.dart';
import 'package:code_challenge/base/utils/namespaces/app_styles.dart';

class ShowCard extends StatelessWidget {
  const ShowCard({super.key, required this.image, required this.title, required this.rating});

  final String image;
  final String title;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 125,
      decoration: BoxDecoration(color: AppColors.lightGrey, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          SizedBox(
            width: context.width * 0.33,
            child: ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(7, 8, 0, 0),
            child: SizedBox(
              width: context.width * 0.50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppStyles.textStyleLargeBold),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: RatingBarIndicator(
                      rating: rating * 5,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 25.0,
                      direction: Axis.horizontal,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Icon(Icons.arrow_forward_ios_outlined)
        ],
      ),
    );
  }
}
