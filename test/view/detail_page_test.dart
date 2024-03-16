import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_search/model/owner/owner.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';
import 'package:github_repo_search/view/page/detail_page.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import '../create_testable_widget.dart';

final _repositoryInfo = RepositoryInfo(
  id: 1,
  fullName: 'flutter/flutter',
  name: 'flutter',
  stargazersCount: 100,
  language: 'Dart',
  watchersCount: 200,
  forks: 300,
  openIssues: 400,
  owner: Owner(
    id: 2,
    login: 'flutter',
    avatarUrl: 'https://www.uchijo.com/icon.jpg',
    htmlUrl: 'https://github.com/flutter/flutter',
  ),
);

void main() {
  testWidgets(
    'detail_page satisfies requirements',
    (tester) async {
      await dotenv.load();

      await mockNetworkImages(
        () async => tester.pumpWidget(
          createTestableWidget(
            DetailPage(
              repositoryInfo: _repositoryInfo,
            ),
          ),
        ),
      );
      await tester.pump();

      expect(
        find.textContaining(_repositoryInfo.fullName),
        findsAtLeastNWidgets(1),
      );

      if (_repositoryInfo.language != null) {
        expect(
          find.textContaining(_repositoryInfo.language!),
          findsAtLeastNWidgets(1),
        );
      }

      expect(
        find.textContaining(_repositoryInfo.stargazersCount.toString()),
        findsAtLeastNWidgets(1),
      );

      expect(
        find.textContaining(_repositoryInfo.watchersCount.toString()),
        findsAtLeastNWidgets(1),
      );

      expect(
        find.textContaining(_repositoryInfo.forks.toString()),
        findsAtLeastNWidgets(1),
      );

      expect(
        find.textContaining(_repositoryInfo.openIssues.toString()),
        findsAtLeastNWidgets(1),
      );

      final avatarImage = tester.widget<Image>(find.byType(Image));
      expect(avatarImage.image, isA<NetworkImage>());
      final networkImage = avatarImage.image as NetworkImage;
      expect(networkImage.url, _repositoryInfo.owner!.avatarUrl);
    },
  );
}
