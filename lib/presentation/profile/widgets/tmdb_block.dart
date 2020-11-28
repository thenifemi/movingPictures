import 'package:flutter/material.dart';

import '../../core/app_localizations.dart';
import '../../core/constants/constants.dart';
import '../../core/constants/language_constants.dart';

class TmdbBlock extends StatelessWidget {
  const TmdbBlock({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  final TextTheme appTextTheme;

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    return Center(
      child: Column(
        children: [
          Text(
            lang.translate(notEndorsedByTMDB),
            style: appTextTheme.headline6,
            textAlign: TextAlign.center,
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    tmdbLogo,
                    width: 150.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      lang.translate(goToTMDB),
                      style: const TextStyle(color: Colors.blue),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blue,
                      size: 14.0,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
