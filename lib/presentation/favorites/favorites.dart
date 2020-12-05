import 'package:flutter/material.dart';
import 'package:movingPictures/presentation/core/app_colors.dart';
import 'package:movingPictures/presentation/favorites/favorite_series_tab.dart';

import '../core/app_localizations.dart';
import '../core/component_widgets/cancel_button_widget.dart';
import '../core/constants/language_constants.dart';
import 'favorite_movies_tab.dart';

class Favorites extends StatelessWidget {
  final bool automaticallyImplyLeading;
  final TabController tabController;

  const Favorites({
    Key key,
    @required this.automaticallyImplyLeading,
    this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);
    final appTextTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: automaticallyImplyLeading,
        leading: automaticallyImplyLeading ? const CancelButton() : null,
        title: Text(lang.translate(favorites), style: appTextTheme.headline5),
        bottom: TabBar(
          controller: tabController,
          isScrollable: true,
          indicatorColor: AppColors.red,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 3.0,
          labelColor: appTextTheme.bodyText1.color,
          unselectedLabelColor: AppColors.white,
          tabs: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(lang.translate(movies).toUpperCase()),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(lang.translate(series).toUpperCase()),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [FavoriteMoviesTab(), FavoriteSeriesTab()],
      ),
    );
  }
}
