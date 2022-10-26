import 'package:equatable/equatable.dart';

abstract class ChatEvent extends Equatable{
  @override
  List<Object> get props => [];
}

class BotMessageEvent extends ChatEvent{
  final String message;
  BotMessageEvent(this.message);

  @override
  String toString() => 'BotMessageEvent';
}
class UserMessageEvent extends ChatEvent {
  final String message;

  UserMessageEvent(this.message);
  @override
  String toString() => 'UserMessageEvent';
}