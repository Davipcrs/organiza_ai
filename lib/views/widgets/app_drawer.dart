import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:organiza_ai/controllers/api.dart';
import 'package:organiza_ai/model/appointment.dart';

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
            // Remove Later
            Appointment appointment = Appointment();
            appointment.create(
              0,
              "title",
              DateTime.now(),
              DateTime.now().add(
                const Duration(days: 2),
              ),
              "Descrição",
              false,
              0xff5f2280,
            );
            var event = appointment.convertToCalendarEventData();
            CalendarControllerProvider.of(context).controller.add(event);
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
