import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bodyMarkdownProvider = StateProvider((ref) => "");

final isScreenSmallProvider =
    NotifierProvider<_IsScreenSmallNotifier, bool>(_IsScreenSmallNotifier.new);

class _IsScreenSmallNotifier extends Notifier<bool> {
  @override
  bool build() {
    return true;
  }

  bool updateScreenSize(BuildContext context) {
    if (MediaQuery.of(context).size.width > 800) {
      return false;
    } else {
      return true;
    }
  }
}

final isMobileProvider =
    NotifierProvider<_IsMobileNotifier, bool>(_IsMobileNotifier.new);

class _IsMobileNotifier extends Notifier<bool> {
  @override
  bool build() {
    return true;
  }

  bool updateScreenSize(BuildContext context) {
    if (MediaQuery.of(context).size.width > 500) {
      return false;
    } else {
      return true;
    }
  }
}

final selectedViewIndexProvider =
    NotifierProvider<_SelectedViewIndexNotifier, int>(
        _SelectedViewIndexNotifier.new);

class _SelectedViewIndexNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  int setIndex(int index) {
    return index;
  }
}
