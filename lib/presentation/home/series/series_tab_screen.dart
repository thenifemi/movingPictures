import 'package:flutter/material.dart';
import 'package:movingPictures/presentation/home/series/widgets/all_genres_block.dart';
import 'package:movingPictures/presentation/home/series/widgets/top_10_block_widget.dart';

import '../../../application/home/series/series/series_bloc.dart';
import 'widgets/series_banner_block_widget.dart';
import 'widgets/series_regular_block_widget.dart';

class SeriesTabScreen extends StatelessWidget {
  const SeriesTabScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const [
          SeriesBannerBlockWidget(),
          SizedBox(height: 20.0),
          SeriesRegularBlockWidget(
            blockName: "On The Air",
            seriesEvent: SeriesEvent.serieTypeCalled("on_the_air"),
          ),
          SizedBox(height: 20.0),
          SeriesRegularBlockWidget(
            blockName: "popular",
            seriesEvent: SeriesEvent.serieTypeCalled("popular"),
          ),
          SizedBox(height: 20.0),
          TopTenBlockWidget(
            seriesEvent: SeriesEvent.serieTypeCalled("top_rated"),
          ),
          SizedBox(height: 20.0),
          SeriesRegularBlockWidget(
            blockName: "Comedy",
            seriesEvent: SeriesEvent.serieByGenreCalled(35),
          ),
          SizedBox(height: 20.0),
          SeriesRegularBlockWidget(
            blockName: "Drama",
            seriesEvent: SeriesEvent.serieByGenreCalled(18),
          ),
          SizedBox(height: 20.0),
          SeriesRegularBlockWidget(
            blockName: "Reality",
            seriesEvent: SeriesEvent.serieByGenreCalled(10764),
          ),
          SizedBox(height: 20.0),
          AllGenresBlock(),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
