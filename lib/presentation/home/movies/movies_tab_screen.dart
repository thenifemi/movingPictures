import 'package:flutter/material.dart';

import '../../core/constants/language_constants.dart';
import '../widgets/banner_block_widget.dart';
import '../widgets/regular_block_widget.dart';
import '../widgets/top_10_block_widget.dart';

class MoviesTabScreen extends StatelessWidget {
  const MoviesTabScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          BannerBlockWidget(),
          SizedBox(height: 20.0),
          RegularBlockWidget(blockName: trendingNow),
          SizedBox(height: 20.0),
          RegularBlockWidget(blockName: action),
          SizedBox(height: 20.0),
          TopTenBlockWidget(moviesOrSeries: movies),
          SizedBox(height: 20.0),
          RegularBlockWidget(blockName: horror),
          SizedBox(height: 20.0),
          RegularBlockWidget(blockName: comedy),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
