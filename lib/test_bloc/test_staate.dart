import 'package:equatable/equatable.dart';

class TestState extends Equatable{
  final String message;

  const TestState(this.message);

  @override
  List<Object?> get props => [message];

}