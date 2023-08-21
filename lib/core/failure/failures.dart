import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class FailureWithMessage extends Failure {
  final String message;
  FailureWithMessage({required this.message});
}

// General failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}
