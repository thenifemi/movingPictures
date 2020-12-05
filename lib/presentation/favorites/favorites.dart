import 'package:flutter/material.dart';

import '../core/app_localizations.dart';
import '../core/component_widgets/cancel_button_widget.dart';
import '../core/constants/language_constants.dart';
import 'favorite_movies_tab.dart';

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
      body: const FavoriteMoviesTab(),
    );
  }
}
