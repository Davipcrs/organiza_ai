import 'package:flutter/material.dart';
import 'package:organiza_ai/controllers/responsiness.dart';
import 'package:organiza_ai/views/main_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(isMobileProvider.notifier).updateScreenSize(context);
    return const MaterialApp(
      home: MainView(),
    );
  }
}
