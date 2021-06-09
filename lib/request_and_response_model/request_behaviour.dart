import 'package:clean_architecture/error/error.dart';

class RequestBehaviour<Request, Response> {
  final Request? requestData;
  final Function(Response? responseData)? onSuccess;
  final Function(Error error)? onError;

  RequestBehaviour({this.requestData, this.onSuccess, this.onError});
}