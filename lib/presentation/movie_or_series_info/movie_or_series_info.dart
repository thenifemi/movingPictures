import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import 'widgets/information_items_widget.dart';

class MovieOrSeriesInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              InformationItemsWidget(appTextTheme: appTextTheme),
            ];
          },
          body: Container(
            color: AppColors.black,
          )),
    );
  }
}
