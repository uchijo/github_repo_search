import 'package:flutter_dotenv/flutter_dotenv.dart';

// call after dotenv.load()
String getGHToken() {
  final rawValue = dotenv.env['GITHUB_TOKEN'];
  if (rawValue == null || rawValue.isEmpty) {
    throw Exception('GITHUB_TOKEN is not set');
  }
  return rawValue;
}
