import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oranos/oranobot/presentation/controller/chat_events.dart';
import 'package:oranos/oranobot/presentation/controller/chat_state.dart';
import 'package:oranos/oranobot/presentation/screens/chat_screen.dart';

List<String> myList =[
  'Hi, Whats You Name Firstname?',
  'Ok, Whats Your Lastname?',
  'Mr , What\'s your Title? ',
  'What Categories you will need expert In?'
];

class ChatBloc extends Bloc<ChatEvent, ChatState>{

  ChatBloc(string) : super(ChatState(
      myList: [BotMessageRow(message: string)]
  )){
    on<BotMessageEvent>((event, emit){
      emit(ChatState(
          myList: [BotMessageRow(message: string)
      ]));
    });

    on<UserMessageEvent>((event, emit){
      emit(ChatState(
          myList: [UserMessageRow(message: string),]
      ));
    });

  }











}

