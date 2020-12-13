import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/people/people.dart';
import '../../domain/people/people_failure.dart';

part 'people_bloc.freezed.dart';
part 'people_event.dart';
part 'people_state.dart';

@injectable
class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  PeopleBloc() : super(const _Initial());

  @override
  Stream<PeopleState> mapEventToState(
    PeopleEvent event,
  ) async* {
    yield* event.map(
      followed: (e) async* {},
      unfollowed: (e) async* {},
      watchPeople: (e) async* {},
      peopleRecieved: (e) async* {},
      personSearchQuery: (e) async* {},
    );
  }
}
