import 'package:flutter/material.dart';

import '../../core/app_localizations.dart';
import '../../core/constants/language_constants.dart';

class CastList extends StatelessWidget {
  CastList({
    Key key,
  }) : super(key: key);

  final testCast = [
    "Taylor Anna-Joy",
    "Kevin Hart",
    "Dwanye Johnson",
    // "Drama",
    // "Action",
    // "Sci-Fi",
    // "Sci-Fi",
    // "Sci-Fi",
    // "Sci-Fi",
  ];

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;
    final lang = AppLocalizations.of(context);

    return Row(
      children: [
        Text(
          "${lang.translate(starring)}: ",
          style: appTextTheme.subtitle2,
        ),
        SizedBox(
          height: 13.0,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, i) {
              final cast = testCast[i];
              return Text(
                "$cast, ",
                style: appTextTheme.subtitle1,
                overflow: TextOverflow.ellipsis,
              );
            },
          ),
        ),
        Text(
          "..${lang.translate(more)}",
          style: appTextTheme.subtitle1,
        ),
      ],
    );
  }
}
