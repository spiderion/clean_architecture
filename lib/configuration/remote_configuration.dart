abstract class RemoteConfiguration {
  String getString(String key);

  bool getBool(String key);

  double getDouble(String key);

  int getInt(String key);

  Future<bool> fetchLatest();

  void addListener(Function() listener);

  void removeListener(Function() listener);
}
