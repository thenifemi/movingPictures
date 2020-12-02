import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favoritemovies_event.dart';
part 'favoritemovies_state.dart';
part 'favoritemovies_bloc.freezed.dart';

class FavoritemoviesBloc
    extends Bloc<FavoritemoviesEvent, FavoritemoviesState> {
  FavoritemoviesBloc() : super(const _Initial());

  @override
  Stream<FavoritemoviesState> mapEventToState(
    FavoritemoviesEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
