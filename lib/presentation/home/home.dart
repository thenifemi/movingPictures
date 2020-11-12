import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movingPictures/presentation/core/app_colors.dart';
import 'package:movingPictures/presentation/core/constants/constants.dart';

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
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.7,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(theQueensGambitPoster),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      AppColors.black.withOpacity(0.6),
                      AppColors.black,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: MainAppBar(
                tabController: tabController,
              ),
              body: TabBarView(
                controller: tabController,
                physics: const BouncingScrollPhysics(),
                children: const [
                  MoviesTabScreen(),
                  SeriesTabScreen(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
