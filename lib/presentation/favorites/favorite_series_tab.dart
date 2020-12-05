import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class FavoriteSeriesTab extends StatelessWidget {
  const FavoriteSeriesTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Series",
        style: TextStyle(
          fontSize: 50.0,
          color: AppColors.white,
        ),
      ),
    );
  }
}
