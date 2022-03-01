@deprecated
abstract class ResultModel {}

@deprecated
class ResultSuccess extends ResultModel {
  dynamic result;

  ResultSuccess({this.result});
}

@deprecated
class ResultConfigValue extends ResultModel {
  final dynamic value;

  ResultConfigValue(this.value);
}
