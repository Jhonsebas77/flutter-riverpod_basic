import 'package:dio/dio.dart';
import 'package:river_pod_basic/src/features/jokes/data/models/jokes_model.dart';

abstract class IJokesRepository {
  Future<JokeModel> getJoke();
}

class JokesRepository implements IJokesRepository {
  final _dioClient = Dio();
  final _url = 'https://v2.jokeapi.dev/joke/Programming';

  @override
  Future<JokeModel> getJoke() async {
    try {
      final result = await _dioClient.get(_url);
      if (result.statusCode == 200) {
        return JokeModel.fromJson(result.data);
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception();
    }
  }
}
