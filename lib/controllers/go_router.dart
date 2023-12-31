import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:organiza_ai/views/add_note_view.dart';
import 'package:organiza_ai/views/main_view.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) {
        return const MainView();
      },
    ),
    GoRoute(
      path: "/note/add",
      builder: (BuildContext context, GoRouterState state) {
        return const AddNoteView();
      },
    )
  ],
);
