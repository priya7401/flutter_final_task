import 'package:flutter/material.dart';

CustomCheckBoxTheme(context) {
  final theme = Theme.of(context);
  final oldCheckboxTheme = theme.checkboxTheme;

  final newCheckBoxTheme = oldCheckboxTheme.copyWith(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
  );

  return newCheckBoxTheme;
}
