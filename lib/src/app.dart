import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_basic/src/features/jokes/logic/jokes_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'River Pod',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('River Pod'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _JokesConsumer(),
              SizedBox(
                height: 50,
              ),
              _ButtonConsummer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _JokesConsumer extends ConsumerWidget {
  const _JokesConsumer({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    ScopedReader watch,
  ) {
    final state = watch(jokesNotifierProvider);
    return state.when(
      initial: () => Text('Toca para iniciar'),
      loading: () => Center(
        child: CircularProgressIndicator(),
      ),
      data: (joke) {
        print('=====================');
        print('[JOKE] -> $joke');
        print('=====================');
        return Text('${joke.setup} \n ${joke.delivery}');
      },
      error: (error) => Text('Error'),
    );
  }
}

class _ButtonConsummer extends ConsumerWidget {
  const _ButtonConsummer({Key? key}) : super(key: key);
  @override
  Widget build(
    BuildContext context,
    ScopedReader watch,
  ) {
    final state = watch(jokesNotifierProvider);
    return ElevatedButton(
      child: Text('Press to get a Joke!'),
      onPressed: !state.isLoading
          ? () {
              context.read(jokesNotifierProvider.notifier).getJoke();
            }
          : null,
    );
  }
}
