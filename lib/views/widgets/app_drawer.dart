import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:organiza_ai/controllers/api.dart';

customAppDrawer(BuildContext context, WidgetRef ref) {
  return Drawer(
    child: Column(
      children: [
        ElevatedButton.icon(
          onPressed: () {
            context.go("/note");
          },
          icon: const Icon(Icons.home),
          label: const Text("Notas"),
        ),
        ElevatedButton.icon(
          onPressed: () {
            context.go("/todo");
          },
          icon: const Icon(Icons.bookmark_border),
          label: const Text("Tarefas (To-do)"),
        ),
        ElevatedButton.icon(
          onPressed: () {
            context.go("/note");
          },
          icon: const Icon(Icons.calendar_month_outlined),
          label: const Text("Agenda"),
        ),
        ElevatedButton.icon(
          onPressed: () async {
            const storage = FlutterSecureStorage();
            ref.read(boolNullHost.notifier).state = true;
            await storage.delete(key: "server_ip");
            context.go("/");
          },
          icon: const Icon(Icons.settings),
          label: const Text("Configurações"),
        )
      ],
    ),
  );
}
