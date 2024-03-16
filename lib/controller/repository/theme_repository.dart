// ignore_for_file: one_member_abstracts

import 'package:flutter/material.dart';

abstract interface class ThemeRepository {
  Future<ThemeMode> getTheme();
  Future<void> saveTheme(ThemeMode themeMode);
}
