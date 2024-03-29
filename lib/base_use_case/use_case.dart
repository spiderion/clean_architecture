// Parameters have to be put into a container object so that they can be
// included in this abstract base class method definition.

import '../base_repository/base_repository.dart';

/// The useCase mainly is in charge of managing the EBR objects
/// returns [BusinessError] when request is not correct
/// has reference to a repository
abstract class UseCase<T extends BaseRepository?> {
  final T repository;

  UseCase(this.repository);
}
