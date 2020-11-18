import 'package:flutter/material.dart';
import 'package:movingPictures/domain/home/movies/movie.dart';

import '../../core/app_colors.dart';
import '../../core/app_localizations.dart';
import '../../core/constants/constants.dart';

class RegularBlockWidget extends StatelessWidget {
  final List<Movie> movies;
  final String blockName;
  final Function showInfoBottomSheet;

  const RegularBlockWidget({
    Key key,
    @required this.blockName,
    @required this.showInfoBottomSheet,
    this.movies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            lang.translate(blockName),
            style: const TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          height: MediaQuery.of(context).size.height / 5.5,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, i) {
              final movie = movies[i];
              // ignore: avoid_print
              print(movie);
              return GestureDetector(
                onTap: () => showInfoBottomSheet(),
                child: Container(
                  padding: const EdgeInsets.only(right: 10.0),
                  width: MediaQuery.of(context).size.height / 7,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset(
                      theQueensGambitPoster,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
