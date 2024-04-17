import 'package:flutter/material.dart';
import 'package:code_challenge/features/home/presentation/view/widgets/list_show_item.dart';
import 'package:code_challenge/features/home/presentation/view_models/home_view_model.dart';

class ShowList extends StatelessWidget {
  const ShowList({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: viewModel.filteredShows?.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              viewModel.navigateToDetail(viewModel.filteredShows![index]);
            },
            child: ShowCard(
              image: viewModel.filteredShows?[index].show?.image?.medium ?? '',
              title: viewModel.filteredShows?[index].show?.name ?? '',
              rating: viewModel.filteredShows?[index].score ?? 0,
            ),
          ),
        );
      },
    );
  }
}
