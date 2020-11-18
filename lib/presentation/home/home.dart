import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/home/movies/movies_bloc.dart';
import '../../injection.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => getIt<MoviesBloc>()
              ..add(const MoviesEvent.movieTypeCalled("popular"))),
      ],
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: MainAppBar(tabController: tabController),
          body: TabBarView(
            controller: tabController,
            physics: const BouncingScrollPhysics(),
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
