import 'package:flutter/material.dart';
import 'package:github_repo_search/repository_impl/theme_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_notifier.g.dart';

// run this to generate code
// dart run build_runner build

@Riverpod(keepAlive: true)
class ThemeNotifier extends _$ThemeNotifier {
  @override
  Future<ThemeMode> build() async {
    final repo = ref.read(themeRepositoryProvider);
    return repo.getTheme();
  }

  Future<void> changeTheme(ThemeMode themeMode) async {
    final repo = ref.read(themeRepositoryProvider);
    await repo.saveTheme(themeMode);
    state = AsyncData(themeMode);
  }
}
