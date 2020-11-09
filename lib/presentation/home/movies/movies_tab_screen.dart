import 'package:flutter/material.dart';

import '../../core/constants/language_constants.dart';
import '../widgets/banner_block_widget.dart';
import '../widgets/build_show_info_modal_bottom_sheet_widget.dart';
import '../widgets/regular_block_widget.dart';
import '../widgets/top_10_block_widget.dart';

class MoviesTabScreen extends StatefulWidget {
  const MoviesTabScreen({Key key}) : super(key: key);

  @override
  _MoviesTabScreenState createState() => _MoviesTabScreenState();
}

class _MoviesTabScreenState extends State<MoviesTabScreen> {
  @override
  Widget build(BuildContext context) {
    Future showInfoBottomSheet() => buildShowInfoModalBottomSheet(context);

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BannerBlockWidget(),
          const SizedBox(height: 20.0),
          RegularBlockWidget(
            blockName: trendingNow,
            showInfoBottomSheet: showInfoBottomSheet,
          ),
          const SizedBox(height: 20.0),
          RegularBlockWidget(
            blockName: action,
            showInfoBottomSheet: showInfoBottomSheet,
          ),
          const SizedBox(height: 20.0),
          TopTenBlockWidget(
            moviesOrSeries: movies,
            showInfoBottomSheet: showInfoBottomSheet,
          ),
          const SizedBox(height: 20.0),
          RegularBlockWidget(
            blockName: horror,
            showInfoBottomSheet: showInfoBottomSheet,
          ),
          const SizedBox(height: 20.0),
          RegularBlockWidget(
            blockName: comedy,
            showInfoBottomSheet: showInfoBottomSheet,
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
