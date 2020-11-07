import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movingPictures/presentation/core/app_colors.dart';
import 'package:movingPictures/presentation/core/constants/constants.dart';

class TopTenBlockWidget extends StatelessWidget {
  final String moviesOrSeries;
  const TopTenBlockWidget({
    Key key,
    @required this.moviesOrSeries,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Top 10 " + moviesOrSeries,
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

              return Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 10.0),
                    width: MediaQuery.of(context).size.height / 4,
                    child: const Placeholder(),
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
              );
            },
          ),
        ),
      ],
    );
  }
}
