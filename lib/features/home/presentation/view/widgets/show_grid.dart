import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:code_challenge/features/home/presentation/view/widgets/grid_show_item.dart';
import 'package:code_challenge/features/home/presentation/view_models/home_view_model.dart';

class ShowGrid extends StatelessWidget {
  const ShowGrid({super.key, required this.viewModel});

  final HomeViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width * 0.13),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10, mainAxisExtent: 330),
        itemCount: viewModel.filteredShows!.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              viewModel.navigateToDetail(viewModel.filteredShows![index]);
            },
            child: GridShowItem(
              image: viewModel.filteredShows?[index].show?.image?.medium ?? '',
              title: viewModel.filteredShows?[index].show?.name ?? '',
              rating: viewModel.filteredShows?[index].score ?? 0,
            ),
          );
        },
      ),
    );
  }
}
