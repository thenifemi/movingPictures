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
            children: [
              Container(
                width: MediaQuery.of(context).size.height / 8,
                height: MediaQuery.of(context).size.height / 5.5,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  color: AppColors.red,
                ),
              ),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "The Queens Gambit",
                            style: appTextTheme.headline5,
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
                      const CancelButton(
                        color: AppColors.black,
                      )
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}
