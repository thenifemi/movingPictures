import 'package:flutter/material.dart';

import '../../../application/home/movies/movies_bloc.dart';
import '../../core/constants/language_constants.dart';
import '../widgets/all_genres_block.dart';
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
          RegularBlockWidget(
            blockName: upcoming,
            moviesEvent: MoviesEvent.movieTypeCalled("upcoming"),
          ),
          SizedBox(height: 20.0),
          RegularBlockWidget(
            blockName: trendingNow,
            moviesEvent: MoviesEvent.movieTypeCalled("popular"),
          ),
          SizedBox(height: 20.0),
          TopTenBlockWidget(
            moviesEvent: MoviesEvent.movieTypeCalled("top_rated"),
          ),
          SizedBox(height: 20.0),
          RegularBlockWidget(
            blockName: horror,
            moviesEvent: MoviesEvent.movieByGenreCalled(27),
          ),
          SizedBox(height: 20.0),
          RegularBlockWidget(
            blockName: comedy,
            moviesEvent: MoviesEvent.movieByGenreCalled(35),
          ),
          SizedBox(height: 20.0),
          RegularBlockWidget(
            blockName: action,
            moviesEvent: MoviesEvent.movieByGenreCalled(28),
          ),
          SizedBox(height: 20.0),
          AllGenresBlock(),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
