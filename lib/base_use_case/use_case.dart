// Parameters have to be put into a container object so that they can be
// included in this abstract base class method definition.

import 'package:clean_architecture/base_repository/base_repository.dart';
import 'package:clean_architecture/request_and_response_model/request_behaviour.dart';

/// The useCase mainly is in charge of managing the EBR objects
/// returns [BusinessError] when request is not correct
/// has reference to a repository
abstract class UseCase<ResultModel, RequestModel, T extends BaseRepository?> {
  final T repository;

  UseCase(this.repository);
}
