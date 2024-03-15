import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_search/controller/query_notifier/query_notifier.dart';

import '../create_container.dart';

void main() {
  test('test QueryNotifier', () {
    final container = createContainer();

    // 初期状態ではkeywordが空文字列
    expect(container.read(queryNotifierProvider).keyword, '');

    // setSearchWordでkeywordを設定
    container.read(queryNotifierProvider.notifier).setSearchWord('flutter');
    expect(container.read(queryNotifierProvider).keyword, 'flutter');
  });
}
