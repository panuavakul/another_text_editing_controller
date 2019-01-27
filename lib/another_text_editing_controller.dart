import 'package:flutter/material.dart';

class AnotherTextEditingController extends TextEditingController {
  @override
  set text(String newText) {
    /// Check if the current text is composing
    /// If yes, then stop composing, if no then ignore this
    if (value.composing.start - value.composing.end != 0) {
      clearComposing();
    }

    value = value.copyWith(
      text: newText,
      selection: const TextSelection.collapsed(offset: -1),
      composing: TextRange.empty,
    );
  }
}
