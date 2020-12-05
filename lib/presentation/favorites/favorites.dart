import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../core/app_localizations.dart';
import '../core/component_widgets/cancel_button_widget.dart';
import '../core/constants/language_constants.dart';
import 'favorite_movies_tab.dart';
import 'favorite_series_tab.dart';

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

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: automaticallyImplyLeading,
          leading: automaticallyImplyLeading ? const CancelButton() : null,
          title: Text(lang.translate(favorites), style: appTextTheme.headline5),
          bottom: FavoritesTabBar(tabController: tabController),
        ),
        body: TabBarView(
          controller: tabController,
          children: const [FavoriteMoviesTab(), FavoriteSeriesTab()],
        ),
      ),
    );
  }
}

class FavoritesTabBar extends StatelessWidget implements PreferredSizeWidget {
  const FavoritesTabBar({
    Key key,
    @required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);
    final appTextTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: TabBar(
        controller: tabController,
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
