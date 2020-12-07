import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wc_flutter_share/wc_flutter_share.dart';

import '../../../../domain/home/series/serie/serie.dart';
import '../../../../infrastructure/core/credentials.dart';
import '../../../core/app_colors.dart';
import '../../../core/app_localizations.dart';
import '../../../core/constants/constants.dart';
import '../../../core/constants/language_constants.dart';

class SeriesShareButtonWidget extends StatelessWidget {
  final Serie serie;

  const SeriesShareButtonWidget({
    Key key,
    @required this.serie,
  }) : super(key: key);

  Future<void> shareFunction({
    @required Serie serie,
  }) async {
    final request = await HttpClient()
        .getUrl(Uri.parse('$MOVIE_POSTER_PATH${serie.posterPath}'));
    final response = await request.close();
    final Uint8List bytes = await consolidateHttpClientResponseBytes(response);
    await WcFlutterShare.share(
      sharePopupTitle: serie.name,
      mimeType: 'image/jpg',
      bytesOfFile: bytes,
      text:
          "Hey! Check out ${serie.name} on Moving Pictures. Download the app now https://github.com/thenifemi/movingPictures",
      fileName: "${serie.name}.jpg",
    );
  }

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);
    final appTextTheme = Theme.of(context).textTheme;

    return SizedBox(
      child: RawMaterialButton(
        onPressed: () async => shareFunction(serie: serie),
        child: Column(
          children: [
            SvgPicture.asset(
              shareIcon,
              color: AppColors.white,
            ),
            const SizedBox(height: 5.0),
            Text(
              lang.translate(share),
              style: appTextTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}

class SeriesInfoButtonWidget extends StatelessWidget {
  final Serie serie;
  final TextTheme appTextTheme;
  const SeriesInfoButtonWidget({
    Key key,
    @required this.appTextTheme,
    @required this.serie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    return SizedBox(
      child: RawMaterialButton(
        //TODO
        // onPressed: () => buildShowInfoModalBottomSheet(
        //   appTextTheme: appTextTheme,
        //   context: context,
        //   movieId: movie.id,
        // ),
        child: Column(
          children: [
            SvgPicture.asset(
              infoIcon,
              color: AppColors.white,
            ),
            const SizedBox(height: 5.0),
            Text(
              lang.translate(info),
              style: appTextTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
