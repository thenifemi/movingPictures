import 'package:flutter/material.dart';

import '../main_layout_appbar_navbar/main_app_bar_widget.dart';
import 'movies/movies_tab_screen.dart';
import 'series/series_tab_screen.dart';

class Home extends StatelessWidget {
  final TextTheme appTextTheme;

  final TabController tabController;

  const Home({
    Key key,
    this.tabController,
    this.appTextTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: MainAppBar(tabController: tabController),
        body: TabBarView(
          controller: tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            MoviesTabScreen(),
            SeriesTabScreen(),
          ],
        ),
      ),
    );
  }
}
