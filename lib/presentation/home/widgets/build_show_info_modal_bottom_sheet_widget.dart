import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movingPictures/presentation/core/component_widgets/half_button_widget.dart';
import 'package:movingPictures/presentation/core/constants/constants.dart';
import 'package:movingPictures/presentation/core/constants/language_constants.dart';

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
      height: MediaQuery.of(context).size.height / 3.4,
      padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
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
          const SizedBox(height: 10.0),
          TrailerButtonBlock(appTextTheme: appTextTheme),
          const Divider(color: AppColors.white),
          Expanded(
              child: MoreInfoButton(
            appTextTheme: appTextTheme,
          ))
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
                        style: appTextTheme.subtitle2,
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
        const SizedBox(height: 5.0),
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
        HalfButton(
          appTextTheme: appTextTheme,
          name: watchTrailer,
          color: AppColors.white,
          onpressed: () {},
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                SvgPicture.asset(
                  favoriteIcon,
                  color: AppColors.white,
                ),
                const SizedBox(height: 5.0),
                Text(
                  favorite,
                  style: appTextTheme.subtitle1,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                SvgPicture.asset(
                  shareIcon,
                  color: AppColors.white,
                ),
                const SizedBox(height: 5.0),
                Text(
                  share,
                  style: appTextTheme.subtitle1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MoreInfoButton extends StatelessWidget {
  final TextTheme appTextTheme;

  const MoreInfoButton({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      child: Container(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
        width: double.infinity,
        child: Row(
          children: [
            SvgPicture.asset(
              infoIcon,
              color: AppColors.white,
            ),
            const SizedBox(width: 10.0),
            Text(
              moreInfo,
              style: appTextTheme.bodyText1,
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.white,
              size: 10.0,
            )
          ],
        ),
      ),
    );
  }
}
