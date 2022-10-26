import 'package:flutter/material.dart';
import 'package:oranos/oranobot/presentation/screens/chat_screen.dart';
import 'package:oranos/oranobot/presentation/screens/get_start_screen.dart';
import 'package:oranos/oranobot/presentation/screens/home_screen.dart';
import 'package:oranos/oranobot/presentation/screens/start_screen.dart';

class Routes {
  static const String startRoute = "/";
  static const String getStartRoute = "/getStart";
  static const String chatRoute = "/chat";
  static const String homeRoute = "/home";
}



class RouteGenerator{
  static Route<dynamic>? getRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.startRoute:return MaterialPageRoute(builder: (_) => const StartScreen());
      case Routes.getStartRoute:return MaterialPageRoute(builder: (_) => const GetStartScreen());
      case Routes.chatRoute:return MaterialPageRoute(builder: (_) =>  ChatScreen());
      case Routes.homeRoute:return MaterialPageRoute(builder: (_) =>  HomeScreen());
      default:return undefinedRoute();
    }
  }

  static Route<dynamic>? undefinedRoute(){
    return MaterialPageRoute(builder: (_) =>
    Scaffold(
      appBar: AppBar(title:const Text('noRouteFound'),),
      body: const Center(child:  Text('noRouteFound'),),
    )
    );
  }

}