import 'package:flutter/material.dart';

import 'widgets/information_items_widget.dart';
import 'widgets/more_like_this_tab_widget.dart';

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
              const MoreLikeThisTab(),
            ];
          },
          body: const Padding(
            padding: EdgeInsets.all(10.0),
          )),
    );
  }
}
