import 'package:equatable/equatable.dart';

///This is the final error returned from the [UseCase] which will be
///handled by an [ErrorStateResolver]
abstract class Error extends Equatable {
  final String? message;
  final String? code;

  Error({this.message = "ERROR_SOMETHING_WENT_WRONG", this.code});

  @override
  List<Object?> get props => [message];
}

class ServerError extends Error {
  ServerError({String? message, String? code}) : super(message: message, code: code);
}

class CacheError extends Error {
  CacheError({String? message, String? code}) : super(message: message, code: code);
}

class NotConnectedError extends Error {
  NotConnectedError({String message = "ERROR_NETWORK_CONNECTION", String? code})
      : super(message: message, code: code);
}

class BusinessError extends Error {
  BusinessError({String message = "SOMETHING_MIGHT_NOT_BE_CORRECT", String? code})
      : super(message: message, code: code);
}

class NotSignedInError extends Error {
  NotSignedInError({String message = "NOT_SIGNED_IN_ERROR", String? code})
      : super(message: message, code: code);
}

class PermissionError extends Error {
  PermissionError({String message = "PERMISSION_TO_USE_THIS_FEATURE_ARE_NOT_GRANTED"})
      : super(message: message);
}

class FirstTimePermissionError extends Error {
  FirstTimePermissionError({String message = "PERMISSION_TO_USE_THIS_FEATURE_ARE_NOT_GRANTED", String? code})
      : super(message: message, code: code);
}

class CaseNotFoundError extends Error {
  CaseNotFoundError({String message = "DEVELOPER_ERROR", String? code}) : super(message: message, code: code);
}

class UnimplementedError extends Error {
  UnimplementedError({String message = "UNIMPLEMENTED_ERROR", String? code})
      : super(message: message, code: code);
}

class AddressNotFoundError extends Error {
  AddressNotFoundError({final String message = "ADDRESS_NOT_FOUNT_ERROR", String? code})
      : super(message: message, code: code);
}
