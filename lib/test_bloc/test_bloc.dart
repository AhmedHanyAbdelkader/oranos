import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oranos/oranobot/presentation/resources/color_manager.dart';
import 'package:oranos/test_bloc/test_events.dart';
import 'package:oranos/test_bloc/test_staate.dart';


class CounterBloc extends Bloc<CounterEvent, int> {

  CounterBloc() : super(0);


  static CounterBloc get(context) => BlocProvider.of(context);

    void getNextQuestion() => emit(state+2);

}

class LovedPersonBloc extends Bloc<CounterEvent, bool> {

  LovedPersonBloc() : super(false);


  void toggleIcon(loved) {
    loved == true ? emit(true) : emit(false);

  }
}