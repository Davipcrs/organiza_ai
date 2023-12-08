import 'package:flutter/material.dart';
import 'package:organiza_ai/controllers/go_router.dart';
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
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 148, 229, 255),
              brightness: Brightness.light),
          useMaterial3: true),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 35, 94, 113),
            brightness: Brightness.dark),
        useMaterial3: true,
      ),
    );
  }
}
