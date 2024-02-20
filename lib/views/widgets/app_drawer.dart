import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:organiza_ai/controllers/api.dart';
import 'package:organiza_ai/controllers/responsiness.dart';

customAppDrawer(BuildContext context, WidgetRef ref) {
  return Drawer(
    child: Column(
      children: [
        ElevatedButton.icon(
          onPressed: () {
            ref.read(selectedViewIndexProvider.notifier).state = 0;
            context.go("/note");
          },
          icon: const Icon(Icons.home),
          label: const Text("Notas"),
        ),
        ElevatedButton.icon(
          onPressed: () {
            ref.read(selectedViewIndexProvider.notifier).state = 1;
            context.go("/todo");
          },
          icon: const Icon(Icons.bookmark_border),
          label: const Text("Tarefas (To-do)"),
        ),
        ElevatedButton.icon(
          onPressed: () {
            ref.read(selectedViewIndexProvider.notifier).state = 2;
            context.go("/calendar");
          },
          icon: const Icon(Icons.calendar_month_outlined),
          label: const Text("Agenda"),
        ),
        ElevatedButton.icon(
          onPressed: () async {
            const storage = FlutterSecureStorage();
            ref.read(boolNullHost.notifier).state = true;
            await storage.delete(key: "server_ip");
            // ignore: use_build_context_synchronously
            context.go("/");
          },
          icon: const Icon(Icons.settings),
          label: const Text("Configurações"),
        )
      ],
    ),
  );
}
