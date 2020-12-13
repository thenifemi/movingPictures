import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movingPictures/application/people/people_bloc.dart';
import 'package:movingPictures/injection.dart';

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
          );
        },
      ),
    );
  }
}
