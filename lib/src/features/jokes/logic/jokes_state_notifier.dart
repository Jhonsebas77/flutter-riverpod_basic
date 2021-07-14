import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_basic/src/features/jokes/data/repositories/jokes_repository.dart';
import 'package:river_pod_basic/src/features/jokes/logic/jokes_state.dart';

class JokesNotifier extends StateNotifier<JokesState> {
  JokesNotifier({
    required IJokesRepository jokesRepository,
  })   : _jokesRepository = jokesRepository,
        super(
          const JokesState.initial(),
        );

  final IJokesRepository _jokesRepository;

  Future<void> getJoke() async {
    state = const JokesState.loading();
    try {
      final joke = await _jokesRepository.getJoke();
      state = JokesState.data(joke: joke);
    } catch (_) {
      state = JokesState.error('Algo salio Mal');
    }
  }
}
