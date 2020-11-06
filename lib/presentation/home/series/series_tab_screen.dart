import 'package:flutter/material.dart';
import 'package:movingPictures/presentation/core/app_colors.dart';

class SeriesTabScreen extends StatelessWidget {
  const SeriesTabScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: const Placeholder(),
          ),
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Trending Now",
              style: TextStyle(
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
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "My Favorites",
              style: TextStyle(
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
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Horror",
              style: TextStyle(
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
      ),
    );
  }
}
