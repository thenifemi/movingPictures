import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/component_widgets/cancel_button_widget.dart';

Future buildShowInfoModalBottomSheet({
  BuildContext context,
  @required TextTheme appTextTheme,
}) {
  return showModalBottomSheet(
    backgroundColor: AppColors.gray,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10.0),
      topRight: Radius.circular(10.0),
    )),
    context: context,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height / 3.5,
      padding: const EdgeInsets.all(12.0),
      color: Colors.transparent,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PosterBlock(),
              const SizedBox(width: 10.0),
              Expanded(
                child: TitleSubtitleBodyBlock(appTextTheme: appTextTheme),
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          TrailerButtonBlock(appTextTheme: appTextTheme)
        ],
      ),
    ),
  );
}

class PosterBlock extends StatelessWidget {
  const PosterBlock({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height / 9,
      height: MediaQuery.of(context).size.height / 6.5,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
        color: AppColors.red,
      ),
    );
  }
}

class TitleSubtitleBodyBlock extends StatelessWidget {
  final TextTheme appTextTheme;
  const TitleSubtitleBodyBlock({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The Queens Gambit",
                    style: appTextTheme.headline5,
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                  Row(
                    children: [
                      Text(
                        "2020",
                        style: appTextTheme.subtitle1,
                      ),
                      const SizedBox(width: 10.0),
                      const Icon(
                        Icons.eighteen_mp,
                        color: AppColors.black,
                        size: 30.0,
                      ),
                      const SizedBox(width: 10.0),
                      Text(
                        "5 Seasons",
                        style: appTextTheme.subtitle1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const CancelButton(),
          ],
        ),
        const SizedBox(height: 10.0),
        Text(
          "Set during the Cold War era, orphaned chess prodigy Beth Harmon struggles with addiction in a quest to become the greatest chess player in the world.",
          style: appTextTheme.bodyText1,
        ),
      ],
    );
  }
}

class TrailerButtonBlock extends StatelessWidget {
  final TextTheme appTextTheme;
  const TrailerButtonBlock({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 40.0,
          width: MediaQuery.of(context).size.width / 2,
          child: const Placeholder(),
        ),
        Expanded(
          child: Column(
            children: [
              const Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 25.0,
              ),
              const SizedBox(height: 5.0),
              Text(
                "Favorite",
                style: appTextTheme.subtitle1,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              const Icon(
                Icons.share,
                color: Colors.white,
                size: 25.0,
              ),
              const SizedBox(height: 5.0),
              Text(
                "Share",
                style: appTextTheme.subtitle1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
