import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:river_pod_basic/src/features/jokes/data/models/jokes_model.dart';

part 'jokes_state.freezed.dart';

extension JokesGetters on JokesState {
  bool get isLoading => this is _JokeStateLoading;
}

@freezed
abstract class JokesState with _$JokesState {
  const factory JokesState.initial() = _JokeStateInitial;
  const factory JokesState.loading() = _JokeStateLoading;
  const factory JokesState.data({required JokeModel joke}) = _JokeStateData;
  const factory JokesState.error([String? error]) = _JokeStateError;
}
