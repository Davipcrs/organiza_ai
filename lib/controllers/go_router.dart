import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:organiza_ai/views/add_note_view.dart';
import 'package:organiza_ai/views/calendar_view.dart';
import 'package:organiza_ai/views/day_calendar_view.dart';
import 'package:organiza_ai/views/edit_note_view.dart';
import 'package:organiza_ai/views/home.dart';
import 'package:organiza_ai/views/main_view.dart';
import 'package:organiza_ai/views/note_details_view.dart';
import 'package:organiza_ai/views/todo_view.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: "/note",
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
      path: "/calendar",
      builder: (BuildContext context, GoRouterState state) {
        return const CalendarView();
      },
    ),
    GoRoute(
      path: "/calendar/day",
      builder: (BuildContext context, GoRouterState state) {
        return DayCalendarView(init: state.extra as DateTime);
      },
    ),
  ],
);
