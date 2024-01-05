import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownPreviewWidget extends StatefulWidget {
  final String markdownText;
  const MarkdownPreviewWidget({super.key, required this.markdownText});

  @override
  State<MarkdownPreviewWidget> createState() => _MarkdownPreviewWidgetState();
}

class _MarkdownPreviewWidgetState extends State<MarkdownPreviewWidget> {
  @override
  Widget build(BuildContext context) {
    return Markdown(data: widget.markdownText);
  }
}
