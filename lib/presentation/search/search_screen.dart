import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/search/search_bloc.dart';
import '../../injection.dart';
import '../core/app_colors.dart';
import 'widgets/search_bar.dart';
import 'widgets/search_result_or_trending.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SearchBloc>()..add(const SearchEvent.trendingCalled()),
      child: BlocBuilder<SearchBloc, SearchState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.gray,
              title: const SearchBar(),
            ),
            body: const SearchResultsORTrending(),
          );
        },
      ),
    );
  }
}
