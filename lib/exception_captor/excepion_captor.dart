
import 'package:clean_architecture/request_and_response_model/result_model.dart';

abstract class ExceptionCaptor {
  Future<ResultModel> execute(Function function);
}
