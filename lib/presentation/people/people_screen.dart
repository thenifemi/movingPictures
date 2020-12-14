import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movingPictures/application/people/people_bloc.dart';
import 'package:movingPictures/injection.dart';
import 'package:movingPictures/presentation/core/app_colors.dart';
import 'package:movingPictures/presentation/core/component_widgets/movie_loading_wigdet.dart';

import '../core/app_localizations.dart';
import '../core/component_widgets/cancel_button_widget.dart';
import '../core/constants/language_constants.dart';
import 'widgets/people_search_bar.dart';

class PeopleScreen extends StatelessWidget {
  final bool automaticallyImplyLeading;

  const PeopleScreen({
    Key key,
    @required this.automaticallyImplyLeading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);
    final appTextTheme = Theme.of(context).textTheme;

    return BlocProvider(
      create: (context) =>
          getIt<PeopleBloc>()..add(const PeopleEvent.watchPeople()),
      child: BlocBuilder<PeopleBloc, PeopleState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: automaticallyImplyLeading,
              leading: automaticallyImplyLeading ? const CancelButton() : null,
              title:
                  Text(lang.translate(people), style: appTextTheme.headline5),
              bottom: const PeopleSearchBar(),
            ),
            body: PeopleYouFollowOrSearchResults(),
          );
        },
      ),
    );
  }
}

class PeopleYouFollowOrSearchResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PeopleBloc, PeopleState>(
      builder: (context, state) {
        return state.maybeMap(
          initial: (_) => const MovieLoadingWidget(),
          loading: (_) => const MovieLoadingWidget(),
          failure: (_) => const MovieErrorWidget(),
          watchPeopleSuccess: (state) {
            if (state.people.isEmpty) {
              return Container(
                color: AppColors.gray,
                height: 100.0,
                width: double.infinity,
              );
            }

            print(state.people[0].email);
            return Container(
              color: AppColors.white,
              height: 100.0,
              width: double.infinity,
            );
          },
          loadSuccessforSearchQuery: (state) {
            return Container(
              color: AppColors.red,
              height: 100.0,
              width: double.infinity,
            );
          },
          orElse: () => null,
        );
      },
    );
  }
}
