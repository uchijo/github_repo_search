import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_search/model/owner/owner.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';
import 'package:github_repo_search/view/component/repository_tile.dart';

import '../create_testable_widget.dart';

void main() {
  testWidgets(
    'repository tile includes repository full name',
    (WidgetTester tester) async {
      await dotenv.load();

      final info = RepositoryInfo(
        id: 1,
        fullName: 'flutter/flutter',
        name: 'flutter',
        stargazersCount: 100,
        language: 'Dart',
        watchersCount: 100,
        forks: 100,
        openIssues: 100,
        owner: Owner(
          id: 1,
          login: 'flutter',
          avatarUrl: 'https://www.uchijo.com/icon.jpg',
          htmlUrl: 'https://github.com/flutter/flutter',
        ),
      );

      await tester.pumpWidget(
        createTestableWidget(RepositoryTile(repositoryInfo: info)),
      );

      expect(find.text(info.fullName), findsOneWidget);
    },
  );
}
