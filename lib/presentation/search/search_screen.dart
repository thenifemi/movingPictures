import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movingPictures/application/search/search_bloc.dart';
import 'package:movingPictures/injection.dart';

import '../core/app_colors.dart';
import '../core/constants/constants.dart';
import 'widgets/search_trending.dart';

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
      child: BlocConsumer<SearchBloc, SearchState>(
        listener: (context, state) {},
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.gray,
              title: SizedBox(
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (value) {
                    value.isEmpty
                        ? context
                            .read<SearchBloc>()
                            .add(const SearchEvent.trendingCalled())
                        : context
                            .read<SearchBloc>()
                            .add(SearchEvent.queryCalled(value));
                  },
                  cursorColor: AppColors.white,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.search,
                  style:
                      const TextStyle(color: AppColors.white, fontSize: 18.0),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child:
                            SvgPicture.asset(searchIcon, color: Colors.grey)),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 25.0),
                    labelText: 'Search for a movie, series or genre',
                    labelStyle:
                        const TextStyle(color: Colors.grey, fontSize: 14.0),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    fillColor: AppColors.gray,
                    filled: true,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            body: const SearchTrending(),
          );
        },
      ),
    );
  }
}
