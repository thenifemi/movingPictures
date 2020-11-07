import 'package:flutter/material.dart';
import 'package:movingPictures/presentation/core/app_colors.dart';

class RegularBlockWidget extends StatelessWidget {
  final String blockName;
  const RegularBlockWidget({
    Key key,
    @required this.blockName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            blockName,
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
          height: MediaQuery.of(context).size.height / 6,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, i) {
              return Container(
                padding: const EdgeInsets.only(right: 10.0),
                width: MediaQuery.of(context).size.height / 8,
                child: const Placeholder(),
              );
            },
          ),
        ),
      ],
    );
  }
}
