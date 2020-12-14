import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movingPictures/presentation/core/constants/language_constants.dart';

import '../../../application/people/people_bloc.dart';
import '../../core/app_colors.dart';
import '../../core/constants/constants.dart';

class PeopleSearchBar extends StatelessWidget implements PreferredSizeWidget {
  const PeopleSearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
      child: TextFormField(
        onChanged: (value) => value.isEmpty
            ? context.read<PeopleBloc>().add(const PeopleEvent.watchPeople())
            : null,
        onSaved: (value) => value.isEmpty
            ? context.read<PeopleBloc>().add(const PeopleEvent.watchPeople())
            : context
                .read<PeopleBloc>()
                .add(PeopleEvent.personSearchQuery(value)),
        cursorColor: AppColors.white,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.search,
        style: const TextStyle(color: AppColors.white, fontSize: 18.0),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(searchIcon, color: Colors.grey)),
          suffix: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: AppColors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Text(search, style: appTextTheme.subtitle2),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 25.0),
          labelText: 'Search for people with email',
          labelStyle: const TextStyle(color: Colors.grey, fontSize: 14.0),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: AppColors.gray,
          filled: true,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
