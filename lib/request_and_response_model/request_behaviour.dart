import 'package:clean_architecture/error/error.dart';

class RequestObserver<Request, Response> {
  final Request? requestData;
  final Function(Response? responseData)? onListen;
  final Function(Error error)? onError;
  final Function()? onDone;

  RequestObserver({this.requestData, this.onListen, this.onError, this.onDone});
}
