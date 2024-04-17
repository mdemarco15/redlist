// import 'package:flutter/material.dart';
// import 'package:shimmer/shimmer.dart';
 
// class ShimmerEffect extends StatelessWidget {
//   final Widget child;

//   const ShimmerEffect({super.key, required this.child});

//   @override
//   Widget build(BuildContext context) {
//     return Shimmer.fromColors(
//       baseColor: Colors.grey[300]!,
//       highlightColor: Colors.white,
//       child: child,
//     );
//   }
// }


// Widget shimmerBody(final double height, final double width){
//   return Container(
//       height: height,
//       width: width,
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.07),
//         borderRadius: const BorderRadius.all(Radius.circular(16)),
//       ),
//     );
// }