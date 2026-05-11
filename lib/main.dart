import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'linze.dart';

Future<void> main() async {
  runApp(ProviderScope(child: const MyApp()));
}
