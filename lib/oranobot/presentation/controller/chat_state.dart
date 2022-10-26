import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';


class ChatState extends Equatable{
  final List<Widget> myList;

  const ChatState({
    required this.myList
  });

  @override
  List<Object?> get props => [myList];
}