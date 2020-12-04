import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movingPictures/application/home/movies/favorite_movies/favoritemovies_bloc.dart';
import 'package:movingPictures/injection.dart';
import 'package:movingPictures/presentation/core/app_localizations.dart';
import 'package:movingPictures/presentation/core/component_widgets/cancel_button_widget.dart';
import 'package:movingPictures/presentation/core/constants/constants.dart';
import 'package:movingPictures/presentation/core/constants/language_constants.dart';

import '../core/app_colors.dart';

class Favorites extends StatelessWidget {
  final bool automaticallyImplyLeading;

  const Favorites({
    Key key,
    @required this.automaticallyImplyLeading,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);
    final appTextTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: automaticallyImplyLeading,
        leading: automaticallyImplyLeading ? const CancelButton() : null,
        title: Text(lang.translate(favorites), style: appTextTheme.headline5),
      ),
      body: BlocProvider(
        create: (context) => getIt<FavoritemoviesBloc>(),
        child: Container(),
      ),
    );
  }
}
