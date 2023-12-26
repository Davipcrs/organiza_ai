import 'package:flutter/material.dart';
import 'package:organiza_ai/api/api_requests.dart';
import 'package:organiza_ai/controllers/go_router.dart';
import 'package:organiza_ai/controllers/responsiness.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  var a = ApiRequests(IP: "192.168.0.2", PORT: 50051);
  var b = await a.getOneNote(2);
  var list = await a.getNotes();
  print(b);
  print(b.title);
  print(b.desc);
  print(b.created);
  print(b.id);
  print(list);
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
