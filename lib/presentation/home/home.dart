import 'package:flutter/material.dart';

import 'movies/movies_tab_screen.dart';
import 'series/series_tab_screen.dart';
import 'widgets/home_app_bar.dart';

class Home extends StatelessWidget {
  final TextTheme appTextTheme;

  final TabController tabController;
  final ScrollController scrollController;

  const Home({
    Key key,
    this.tabController,
    this.appTextTheme,
    this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          controller: scrollController,
          headerSliverBuilder: (context, innerBoxScrolled) => [
            HomeAppBar(tabController: tabController),
          ],
          body: TabBarView(
            controller: tabController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              MoviesTabScreen(),
              SeriesTabScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
