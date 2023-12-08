import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:organiza_ai/controllers/responsiness.dart';

class NavRail extends ConsumerWidget {
  const NavRail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (ref.watch(isMobileProvider.notifier).updateScreenSize(context)) {
      return const SizedBox.shrink();
    }
    return NavigationRail(
      onDestinationSelected: (value) {
        ref.read(selectedViewIndexProvider.notifier).setIndex(value);
      },
      elevation: 4,
      destinations: const [
        NavigationRailDestination(
          icon: Icon(Icons.home),
          selectedIcon: Icon(Icons.home_filled),
          label: Text('First'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.bookmark_border),
          selectedIcon: Icon(Icons.book),
          label: Text('Second'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.star_border),
          selectedIcon: Icon(Icons.star),
          label: Text('Third'),
        ),
      ],
      selectedIndex: ref.watch(selectedViewIndexProvider),
    );
  }
}
