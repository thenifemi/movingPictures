import 'package:flutter/material.dart';

import '../widgets/banner_block_widget.dart';
import '../widgets/build_show_info_modal_bottom_sheet_widget.dart';

class SeriesTabScreen extends StatelessWidget {
  const SeriesTabScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    Future showInfoBottomSheet() => buildShowInfoModalBottomSheet(
          context: context,
          appTextTheme: appTextTheme,
        );

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BannerBlockWidget(),
          const SizedBox(height: 20.0),
          // RegularBlockWidget(
          //   blockName: trendingNow,
          //   showInfoBottomSheet: showInfoBottomSheet,
          // ),
          // const SizedBox(height: 20.0),
          // RegularBlockWidget(
          //   blockName: action,
          //   showInfoBottomSheet: showInfoBottomSheet,
          // ),
          // const SizedBox(height: 20.0),
          // TopTenBlockWidget(
          //   moviesOrSeries: series,
          //   showInfoBottomSheet: showInfoBottomSheet,
          // ),
          // const SizedBox(height: 20.0),
          // RegularBlockWidget(
          //   blockName: horror,
          //   showInfoBottomSheet: showInfoBottomSheet,
          // ),
          // const SizedBox(height: 20.0),
          // RegularBlockWidget(
          //   blockName: comedy,
          //   showInfoBottomSheet: showInfoBottomSheet,
          // ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
