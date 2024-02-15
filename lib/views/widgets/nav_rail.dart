import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:organiza_ai/controllers/api.dart';
import 'package:organiza_ai/controllers/responsiness.dart';
import 'package:organiza_ai/model/appointment.dart';
import 'package:organiza_ai/model/todo.dart';

class NavRail extends ConsumerWidget {
  const NavRail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (ref.watch(isMobileProvider.notifier).updateScreenSize(context)) {
      return const SizedBox.shrink();
    }
    return NavigationRail(
      onDestinationSelected: (value) async {
        ref.read(selectedViewIndexProvider.notifier).state = value;
        if (value == 0) {
          context.go("/note");
        }
        if (value == 1) {
          context.go("/todo");
        }
        if (value == 2) {
          Appointment appointment = Appointment();
          appointment.create(
            0,
            "Teste",
            DateTime.now(),
            "Descrição",
            DateTime.now().add(
              const Duration(minutes: 30),
            ),
            false,
            0xff5f2280,
          );
          var event = appointment.convertToCalendarEventData();
          CalendarControllerProvider.of(context).controller.add(event);
          context.go("/calendar");
        }
        if (value == 3) {
          if (kIsWeb) {
            return;
          }
          const storage = FlutterSecureStorage();
          ref.read(boolNullHost.notifier).state = true;
          await storage.delete(key: "server_ip");
          // ignore: use_build_context_synchronously
          context.go("/");
        }
      },
      elevation: 4,
      leading: ElevatedButton(
        onPressed: () {
          int index = ref.read(selectedViewIndexProvider);
          if (index == 0) {
            context.go("/note/add");
          }
          if (index == 1) {
            Todo todo = Todo();
            todo.create(0, "To do");
            ref.read(apiAddTodoProvider.notifier).addTodo(todo);
            ref.invalidate(apiTodosProvider);
          }
          if (index == 2) {}
        },
        child: const Center(child: Icon(Icons.add)),
      ),
      destinations: const [
        NavigationRailDestination(
          icon: Icon(Icons.home),
          selectedIcon: Icon(Icons.home_filled),
          label: Text('Home - Notas'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.bookmark_border),
          selectedIcon: Icon(Icons.book),
          label: Text('Home - Todo'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.calendar_month_outlined),
          selectedIcon: Icon(Icons.calendar_month),
          label: Text('Third'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.settings_outlined),
          selectedIcon: Icon(Icons.settings),
          label: Text('Four'),
        ),
      ],
      selectedIndex: ref.watch(selectedViewIndexProvider),
    );
  }
}
