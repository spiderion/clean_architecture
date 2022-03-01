import '../request_and_response_model/result_model.dart';

@deprecated
abstract class ExceptionCaptor {
  Future<ResultModel> execute(Function function);
}
