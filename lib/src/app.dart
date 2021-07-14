import 'package:flutter/material.dart';

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
        body: const Center(
          child: Text('River Pod Jokes'),
        ),
      ),
    );
  }
}
