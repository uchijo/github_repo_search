import 'package:flutter/material.dart';
import 'package:github_repo_search/controller/repository/theme_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_repository_impl.g.dart';

final pref = SharedPreferences.getInstance();

@riverpod
ThemeRepository themeRepository(ThemeRepositoryRef ref) {
  return ThemeRepositoryImpl();
}

class ThemeRepositoryImpl implements ThemeRepository {
  @override
  Future<ThemeMode> getTheme() async {
    final instance = await pref;
    final result = instance.getInt('theme');
    if (result == null) {
      return ThemeMode.system;
    }
    return ThemeMode.values[result];
  }

  @override
  Future<void> saveTheme(ThemeMode themeMode) async {
    final instance = await pref;
    await instance.setInt('theme', themeMode.index);
  }
}
