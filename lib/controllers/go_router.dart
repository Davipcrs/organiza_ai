import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:organiza_ai/views/add_note_view.dart';
import 'package:organiza_ai/views/edit_note_view.dart';
import 'package:organiza_ai/views/main_view.dart';
import 'package:organiza_ai/views/note_details_view.dart';
import 'package:organiza_ai/views/select_server_host.dart';
import 'package:organiza_ai/views/todo_view.dart';

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
    ),
    GoRoute(
      path: "/note/view",
      builder: (BuildContext context, GoRouterState state) {
        return const NoteDetailsView();
      },
    ),
    GoRoute(
      path: "/note/edit",
      builder: (BuildContext context, GoRouterState state) {
        return const EditNoteView();
      },
    ),
    GoRoute(
      path: "/todo",
      builder: (BuildContext context, GoRouterState state) {
        return const TodoView();
      },
    ),
    GoRoute(
      path: "/select-server",
      builder: (BuildContext context, GoRouterState state) {
        return const SelectHostView();
      },
    ),
  ],
);
