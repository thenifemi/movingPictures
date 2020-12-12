import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movingPictures/domain/people/people.dart';
import 'package:movingPictures/domain/people/people_failure.dart';

part 'people_event.dart';
part 'people_state.dart';
part 'people_bloc.freezed.dart';

class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  PeopleBloc() : super(_Initial());

  @override
  Stream<PeopleState> mapEventToState(
    PeopleEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
