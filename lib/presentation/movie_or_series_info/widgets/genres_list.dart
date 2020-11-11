import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class GenresList extends StatelessWidget {
  GenresList({
    Key key,
  }) : super(key: key);

  final testGenres = [
    "Drama",
    "Suspense",
    "Thriller",
    "Drama",
    "Action",
    "Sci-Fi",
    "Sci-Fi",
    "Sci-Fi",
    "Sci-Fi",
  ];

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: SizedBox(
        height: 22.0,
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: testGenres.length,
          itemBuilder: (context, i) {
            final genre = testGenres[i];
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              margin: const EdgeInsets.symmetric(horizontal: 2.5),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.white),
                borderRadius: BorderRadius.circular(3.0),
              ),
              child: Center(
                child: Text(genre,
                    style: TextStyle(
                      fontFamily: appTextTheme.subtitle1.fontFamily,
                      fontWeight: FontWeight.w600,
                      color: appTextTheme.subtitle1.color,
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}
