import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../application/search/search_bloc.dart';
import '../../core/app_colors.dart';
import '../../core/constants/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        onChanged: (value) {
          value.isEmpty
              ? context
                  .read<SearchBloc>()
                  .add(const SearchEvent.trendingCalled())
              : context.read<SearchBloc>().add(SearchEvent.queryCalled(value));
        },
        cursorColor: AppColors.white,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        style: const TextStyle(color: AppColors.white, fontSize: 18.0),
        decoration: InputDecoration(
          prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(searchIcon, color: Colors.grey)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 25.0),
          labelText: 'Search for a movie, series or genre',
          labelStyle: const TextStyle(color: Colors.grey, fontSize: 14.0),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: AppColors.gray,
          filled: true,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
