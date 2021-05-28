import 'package:clean_architecture/configuration/remote_configuration.dart';
import 'package:clean_architecture/exception_captor/excepion_captor.dart';
import 'package:clean_architecture/request_and_response_model/result_model.dart';

/// The role of the repository is to convert the exception in manageable errors,
/// and provide info about remote Data or Status
abstract class BaseRepository {
  ///Access only from RepositoryImpl
  final RemoteConfiguration remoteConfiguration;
  final ExceptionCaptor exceptionCaptor;

  BaseRepository(this.remoteConfiguration, this.exceptionCaptor);

  String getStringConfig(String key) {
    return remoteConfiguration.getString(key);
  }

  Future<ResultModel> executeDefaultRemoteOperation(Function function, {bool? shouldCheckConnection}) async {
    return exceptionCaptor.execute(function);
  }
}
