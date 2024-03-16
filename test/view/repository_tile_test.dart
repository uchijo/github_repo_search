import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_search/model/owner/owner.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';
import 'package:github_repo_search/view/component/repository_tile.dart';
import 'package:github_repo_search/view/page/detail_page.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import '../create_testable_widget.dart';

void main() async {
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

  setUpAll(() async => dotenv.load());

  testWidgets('repository tile includes repository full name', (tester) async {
    await tester.pumpWidget(
      createTestableWidget(RepositoryTile(repositoryInfo: info)),
    );

    expect(find.text(info.fullName), findsOneWidget);
  });

  testWidgets('test navigation to detail page', (tester) async {
    await mockNetworkImages(
      () async {
        await tester.pumpWidget(
          createTestableWidget(RepositoryTile(repositoryInfo: info)),
        );

        await tester.tap(find.byType(RepositoryTile));
        await tester.pump(const Duration(seconds: 3));
        await tester.pump();

        expect(find.byType(DetailPage), findsOneWidget);
      },
    );
  });
}
