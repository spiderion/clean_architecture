import 'package:clean_architecture_components/clean_architecture.dart';

/// The role of the repository is to convert the exception in manageable errors,
/// and provide info about remote Data or Status
abstract class BaseRepository {
  ///Access only from RepositoryImpl
  final RemoteConfiguration remoteConfiguration;

  BaseRepository(this.remoteConfiguration);

  String getStringConfig(String key) {
    return remoteConfiguration.getString(key);
  }
}
