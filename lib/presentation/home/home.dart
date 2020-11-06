import 'package:flutter/material.dart';
import 'package:movingPictures/presentation/core/constants/language_constants.dart';
import 'package:movingPictures/presentation/home/movies/movies_tab_screen.dart';
import 'package:movingPictures/presentation/home/series/series_tab_screen.dart';

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
    final appTextTheme = Theme.of(context).textTheme;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          controller: tabController,
          tabs: [
            Text(
              movies,
              style: appTextTheme.bodyText1,
            ),
            Text(
              series,
              style: appTextTheme.bodyText1,
            ),
          ],
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            MoviesTabScreen(),
            SeriesTabScreen(),
          ],
        ),
      ),
    );
  }
}
