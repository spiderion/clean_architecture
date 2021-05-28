abstract class RemoteConfiguration {
  String getString(String key);

  Future<bool> fetchLatest();
}
