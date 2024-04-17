import 'package:cached_network_image/cached_network_image.dart';
import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:code_challenge/base/utils/namespaces/app_colors.dart';
import 'package:code_challenge/base/utils/namespaces/app_styles.dart';
import 'package:code_challenge/features/show_detail/presentation/view_models/show_detail_screen_view_model.dart';

class ShowDetailScreen extends Screen<ShowDetailScreenViewModel> {
  ShowDetailScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx((user) {
      return ResponsiveBuilder(builder: (context, size) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Get.back();
              },
            ),
            backgroundColor: AppColors.primary,
            title: Text(
              viewModel.show?.show?.name ?? '',
              style: AppStyles.textStyleLargeBold.copyWith(color: Colors.white),
            ),
          ),
          backgroundColor: AppColors.primary,
          body: Padding(
            padding: size.deviceScreenType == DeviceScreenType.mobile ? const EdgeInsets.all(0.0) : EdgeInsets.symmetric(horizontal: context.width * 0.2),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: context.width,
                    height: 225,
                    child: CachedNetworkImage(
                      imageUrl: viewModel.show?.show?.image?.original ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 10.0, bottom: 0),
                    child: Row(
                      children: [
                        Text('Premiere: ', style: AppStyles.textStyleSmall.copyWith(color: Colors.white)),
                        Text(
                          viewModel.formatDate(viewModel.show?.show?.premiered ?? ''),
                          style: AppStyles.textStyleSmall.copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  viewModel.show?.show?.summary == null
                      ? Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            'Nessuna descrizione disponibile',
                            style: AppStyles.textStyleLargeBold.copyWith(color: Colors.white),
                          ),
                        )
                      : Html(
                          data: viewModel.show?.show?.summary,
                          style: {
                            "body": Style(fontSize: FontSize(14.0), fontWeight: FontWeight.w400, color: Colors.white),
                          },
                        )
                ],
              ),
            ),
          ),
        );
      });
    }, onLoading: Container(color: AppColors.primary, child: const Center(child: CircularProgressIndicator())));
  }
}
