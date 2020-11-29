import 'package:flutter/material.dart';

import 'movies/movies_tab_screen.dart';
import 'series/series_tab_screen.dart';
import 'widgets/home_app_bar.dart';

class Home extends StatefulWidget {
  final TextTheme appTextTheme;
  final TabController tabController;

  const Home({
    Key key,
    this.tabController,
    this.appTextTheme,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          controller: scrollController,
          headerSliverBuilder: (context, innerBoxScrolled) => [
            HomeAppBar(
              tabController: widget.tabController,
              innerBoxScrolled: innerBoxScrolled,
            ),
          ],
          body: TabBarView(
            controller: widget.tabController,
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
