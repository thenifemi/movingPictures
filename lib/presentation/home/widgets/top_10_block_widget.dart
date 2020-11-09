import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/app_colors.dart';
import '../../core/constants/constants.dart';
import '../../core/constants/language_constants.dart';

class TopTenBlockWidget extends StatelessWidget {
  final String moviesOrSeries;
  final Function showInfoBottomSheet;

  const TopTenBlockWidget({
    Key key,
    @required this.moviesOrSeries,
    @required this.showInfoBottomSheet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "$top10 $moviesOrSeries",
            style: const TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          height: MediaQuery.of(context).size.height / 2.5,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, i) {
              final List _numberIcons = [
                number1Icon,
                number2Icon,
                number3Icon,
                number4Icon,
                number5Icon,
                number6Icon,
                number7Icon,
                number8Icon,
                number9Icon,
                number0Icon,
              ];

              final _number = _numberIcons[i];

              return GestureDetector(
                onTap: () => showInfoBottomSheet(),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      width: MediaQuery.of(context).size.height / 4,
                      child: Container(
                        padding: const EdgeInsets.only(right: 10.0),
                        width: MediaQuery.of(context).size.height / 8,
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                            color: AppColors.red,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset(
                          _number.toString(),
                          color: AppColors.white,
                          height: 100.0,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
