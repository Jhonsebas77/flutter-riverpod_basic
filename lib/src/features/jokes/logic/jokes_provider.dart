import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_basic/src/features/jokes/data/repositories/jokes_repository.dart';
import 'package:river_pod_basic/src/features/jokes/logic/jokes_state.dart';
export 'package:river_pod_basic/src/features/jokes/logic/jokes_state.dart';
import 'package:river_pod_basic/src/features/jokes/logic/jokes_state_notifier.dart';

// part of 'jokes_state_notifier.dart';

final jokesNotifierProvider = StateNotifierProvider<JokesNotifier, JokesState>(
  (ref) => JokesNotifier(
    jokesRepository: ref.watch(_jokesRepositoryProvider),
  ),
);

final _jokesRepositoryProvider = Provider<IJokesRepository>(
  (ref) => JokesRepository(),
);
