import 'package:flutter/material.dart';

import '../../domain/home/movies/cast/cast.dart';
import '../../domain/home/movies/movie/movie.dart';
import '../core/app_colors.dart';
import '../core/component_widgets/cancel_button_widget.dart';

Future buildCastModalSheet({
  @required BuildContext context,
  @required List<Cast> casts,
  @required Movie movie,
}) {
  return showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: AppColors.gray,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(15.0),
      topRight: Radius.circular(15.0),
    )),
    context: context,
    builder: (context) {
      final appTextTheme = Theme.of(context).textTheme;

      return Container(
        height: MediaQuery.of(context).size.height / 1.05,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: CancelButton(),
              ),
              Text(
                movie.title,
                style: const TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Cast",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: casts.length,
                  itemBuilder: (context, i) {
                    final cast = casts[i];
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          cast.name,
                          style: TextStyle(
                            color: appTextTheme.subtitle1.color,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
