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
    "Suspense",
  ];

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Wrap(
        alignment: WrapAlignment.center,
        runSpacing: 8.0,
        spacing: 0.8,
        children: testGenres
            .map((e) => Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5.0,
                    vertical: 2.0,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 2.5),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.white),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text(e,
                      style: TextStyle(
                        fontFamily: appTextTheme.subtitle1.fontFamily,
                        fontWeight: FontWeight.w600,
                        color: appTextTheme.subtitle1.color,
                      )),
                ))
            .toList(),
      ),
    );
  }
}
