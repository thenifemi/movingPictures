import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movingPictures/domain/home/shared_classes/cast/cast_failure.dart';
import 'package:movingPictures/domain/home/shared_classes/cast/cast.dart';
import 'package:dartz/dartz.dart';
import 'package:movingPictures/domain/home/shared_classes/cast/cast_interface.dart';
import 'package:movingPictures/infrastructure/core/credentials.dart';

@LazySingleton(as: CastInterface)
class CastRepository extends CastInterface {
  final Dio _dio = Dio();
  final String apiKey = TMDB_API_KEY;
  final String tmdbUrl = TMDB_URL;
  String deviceLocal = Platform.localeName;

  @override
  Future<Either<CastFailure, Cast>> getMovie(int castId) async {
    if (deviceLocal == "pt_BR") deviceLocal = "pt-BR";
    if (deviceLocal == "en_US") deviceLocal = "en-US";

    final getPersonUrl = "$tmdbUrl/person/$castId";
    final params = {
      "api_key": apiKey,
      "language": deviceLocal,
    };

    try {
      final Response<Map<String, dynamic>> response = await _dio.get(
        getPersonUrl,
        queryParameters: params,
      );
      final Cast movie = Cast.fromJson(response.data);

      return right(movie);
    } catch (e) {
      return left(const CastFailure.unexpected());
    }
  }
}
