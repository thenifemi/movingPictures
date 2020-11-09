import 'package:flutter/material.dart';
import 'package:movingPictures/presentation/core/app_colors.dart';
import 'package:movingPictures/presentation/core/component_widgets/cancel_button_widget.dart';

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
              Container(
                width: MediaQuery.of(context).size.height / 9,
                height: MediaQuery.of(context).size.height / 6.5,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  color: AppColors.red,
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  children: [
                    TitleSubtitleAndCancel(appTextTheme: appTextTheme),
                    const SizedBox(
                      height: 50.0,
                      child: Placeholder(),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

class TitleSubtitleAndCancel extends StatelessWidget {
  final TextTheme appTextTheme;
  const TitleSubtitleAndCancel({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                    Icons.pages,
                    color: AppColors.black,
                    size: 25.0,
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
    );
  }
}
