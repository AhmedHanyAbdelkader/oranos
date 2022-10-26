import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oranos/oranobot/presentation/controller/chat_bloc.dart';
import 'package:oranos/oranobot/presentation/controller/chat_state.dart';
import 'package:oranos/oranobot/presentation/resources/routes_manager.dart';
import 'package:oranos/oranobot/presentation/resources/theme_manager.dart';
import 'package:oranos/oranobot/presentation/screens/home_screen.dart';
import 'package:oranos/oranobot/presentation/screens/start_screen.dart';
import 'package:oranos/test_bloc/ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oranos',
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false,
      // onGenerateRoute: RouteGenerator.getRoute,
      // initialRoute: Routes.startRoute,

      //home: IncreamentScreen(),

      home: HomeScreen(),
    );
  }
}



