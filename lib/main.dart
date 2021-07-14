import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_basic/src/app.dart';

void main() => runApp(
      ProviderScope(
        child: const MyApp(),
      ),
    );
