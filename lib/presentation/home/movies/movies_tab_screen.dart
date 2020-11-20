import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movingPictures/application/home/movies/genres/genres_bloc.dart';
import 'package:movingPictures/injection.dart';
import 'package:movingPictures/presentation/core/app_colors.dart';

import '../../../application/home/movies/movies_bloc.dart';
import '../../core/constants/language_constants.dart';
import '../widgets/banner_block_widget.dart';
import '../widgets/build_show_info_modal_bottom_sheet_widget.dart';
import '../widgets/regular_block_widget.dart';
import '../widgets/top_10_block_widget.dart';

class MoviesTabScreen extends HookWidget {
  const MoviesTabScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BannerBlockWidget(),
          const SizedBox(height: 20.0),
          const RegularBlockWidget(
            blockName: trendingNow,
            moviesEvent: MoviesEvent.movieTypeCalled("upcoming"),
          ),
          const SizedBox(height: 20.0),
          const RegularBlockWidget(
            blockName: action,
            moviesEvent: MoviesEvent.movieByGenreCalled(28),
          ),
          const SizedBox(height: 20.0),
          const TopTenBlockWidget(
            moviesOrSeries: movies,
            moviesEvent: MoviesEvent.movieTypeCalled("top_rated"),
          ),
          const SizedBox(height: 20.0),
          const RegularBlockWidget(
            blockName: horror,
            moviesEvent: MoviesEvent.movieByGenreCalled(27),
          ),
          const SizedBox(height: 20.0),
          const RegularBlockWidget(
            blockName: comedy,
            moviesEvent: MoviesEvent.movieByGenreCalled(35),
          ),
          const SizedBox(height: 20.0),
          AllGenresBlock(appTextTheme: appTextTheme),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}

class AllGenresBlock extends StatelessWidget {
  const AllGenresBlock({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  final TextTheme appTextTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            " All Genres",
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(height: 10.0),
          BlocProvider(
            create: (context) =>
                getIt<GenresBloc>()..add(const GenresEvent.getGenresCalled()),
            child: BlocBuilder<GenresBloc, GenresState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => Container(
                    height: 100.0,
                    color: AppColors.white,
                  ),
                  loading: (_) => Container(
                    height: 100.0,
                    color: AppColors.gray,
                  ),
                  loadSuccess: (state) {
                    return Wrap(
                      alignment: WrapAlignment.center,
                      runSpacing: 8.0,
                      spacing: 10,
                      children: state.genres
                          .map(
                            (e) => Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5.0,
                                vertical: 2.0,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.white),
                                borderRadius: BorderRadius.circular(3.0),
                              ),
                              child: Text(
                                e.name,
                                style: TextStyle(
                                    fontFamily:
                                        appTextTheme.subtitle1.fontFamily,
                                    fontWeight: FontWeight.w600,
                                    color: appTextTheme.subtitle1.color,
                                    fontSize: 20.0),
                              ),
                            ),
                          )
                          .toList(),
                    );
                  },
                  loadFailure: (_) => Container(
                    height: 100.0,
                    color: AppColors.red,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
