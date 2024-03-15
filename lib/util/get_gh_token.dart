String getGHToken() {
  const rawValue = String.fromEnvironment('GITHUB_TOKEN');
  if (rawValue.isEmpty) {
    throw Exception('GITHUB_TOKEN is not set');
  }
  return rawValue;
}
