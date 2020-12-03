import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wc_flutter_share/wc_flutter_share.dart';

import '../../../domain/home/movies/movie/movie.dart';
import '../../../infrastructure/core/credentials.dart';
import '../../home/widgets/build_show_info_modal_bottom_sheet_widget.dart';
import '../app_colors.dart';
import '../app_localizations.dart';
import '../constants/constants.dart';
import '../constants/language_constants.dart';

class ShareButtonWidget extends StatelessWidget {
  final Movie movie;

  const ShareButtonWidget({
    Key key,
    @required this.movie,
  }) : super(key: key);

  Future<void> shareFunction({
    @required Movie movie,
  }) async {
    final request = await HttpClient()
        .getUrl(Uri.parse('$MOVIE_POSTER_PATH${movie.posterPath}'));
    final response = await request.close();
    final Uint8List bytes = await consolidateHttpClientResponseBytes(response);
    await WcFlutterShare.share(
      sharePopupTitle: movie.title,
      mimeType: 'image/jpg',
      bytesOfFile: bytes,
      text:
          "Hey! Check out ${movie.title} on Moving Pictures. Download the app now https://github.com/thenifemi/movingPictures",
      fileName: "${movie.title}.jpg",
    );
  }

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);
    final appTextTheme = Theme.of(context).textTheme;

    return SizedBox(
      child: RawMaterialButton(
        onPressed: () async => shareFunction(movie: movie),
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

class InfoButtonWidget extends StatelessWidget {
  final Movie movie;
  final TextTheme appTextTheme;
  const InfoButtonWidget({
    Key key,
    @required this.appTextTheme,
    @required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    return SizedBox(
      child: RawMaterialButton(
        onPressed: () => buildShowInfoModalBottomSheet(
          appTextTheme: appTextTheme,
          context: context,
          movieId: movie.id,
        ),
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
