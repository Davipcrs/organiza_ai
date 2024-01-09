import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

MarkdownStyleSheet defaultMdStyle(BuildContext context) {
  return MarkdownStyleSheet(
    a: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    p: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    h1: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    h2: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    h3: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    h4: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    h5: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    h6: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    code: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    em: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    strong: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    del: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    blockquote: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    img: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    checkbox: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    listBullet: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    tableHead: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    tableBody: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
  );
}
