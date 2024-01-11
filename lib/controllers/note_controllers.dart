import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:organiza_ai/model/note.dart';

final viewedNoteProvider = StateProvider((ref) => Note());

final editedNoteProvider = StateProvider((ref) => Note());
