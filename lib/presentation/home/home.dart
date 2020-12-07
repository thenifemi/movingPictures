import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import 'movies/movies_tab_screen.dart';
import 'movies/widgets/home_app_bar.dart';
import 'series/series_tab_screen.dart';

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

class _HomeState extends State<Home> with TickerProviderStateMixin {
  AnimationController _colorAnimationController;
  AnimationController _textAnimationController;
  Animation _colorTween;
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    _colorAnimationController =
        AnimationController(vsync: this, duration: const Duration());

    _colorTween = ColorTween(begin: Colors.transparent, end: AppColors.black)
        .animate(_colorAnimationController);

    _textAnimationController =
        AnimationController(vsync: this, duration: const Duration());

    super.initState();
  }

  // ignore: missing_return
  bool _scrollListener(ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _colorAnimationController.animateTo(scrollInfo.metrics.pixels / 350);

      _textAnimationController
          .animateTo((scrollInfo.metrics.pixels - 350) / 50);
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NotificationListener<ScrollNotification>(
          onNotification: _scrollListener,
          child: Stack(
            children: [
              TabBarView(
                controller: widget.tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  MoviesTabScreen(),
                  SeriesTabScreen(),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
                child: AnimatedBuilder(
                  animation: _colorAnimationController,
                  builder: (context, child) => HomeAppBar(
                    tabController: widget.tabController,
                    colorTween: _colorTween,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
