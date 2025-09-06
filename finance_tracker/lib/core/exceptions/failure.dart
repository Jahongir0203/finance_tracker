import '../../exports.dart';

base class Failure extends Equatable {
  final String? message;

  const Failure({this.message});

  @override
  String toString() {
    return message ?? AppLocaleKeys.unExpectedError;
  }

  @override
  List<Object?> get props => [message];
}
