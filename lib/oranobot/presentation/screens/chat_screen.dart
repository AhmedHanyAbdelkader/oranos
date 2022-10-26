import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oranos/oranobot/presentation/controller/chat_bloc.dart';
import 'package:oranos/oranobot/presentation/controller/chat_events.dart';
import 'package:oranos/oranobot/presentation/controller/chat_state.dart';
import 'package:oranos/oranobot/presentation/resources/assets_manager.dart';
import 'package:oranos/oranobot/presentation/resources/color_manager.dart';
import 'package:oranos/oranobot/presentation/resources/styles_manager.dart';
import 'package:oranos/oranobot/presentation/resources/values_manager.dart';



class ChatScreen extends StatelessWidget {

  String x = "Hi, Whats You Name Firstname?";

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold());
  }

  // @override
  // Widget build(BuildContext context) {
  //   return BlocProvider<ChatBloc>(
  //     create: (context) => ChatBloc(x),
  //     child:SafeArea(
  //       child:  Scaffold(
  //         body: Column(
  //           children: [
  //             Expanded(
  //               child: BlocBuilder<ChatBloc,ChatState>(
  //                 builder: (BuildContext context, state) {
  //                   return ListView.builder(
  //                     itemCount: state.myList.length,
  //                       itemBuilder: (BuildContext context, index){
  //                         return state.myList[index];
  //                       });
  //                 },
  //
  //               ),
  //             ),
  //             Container(
  //                 width: double.infinity,
  //                 height: 120,
  //                 child: BlocBuilder<ChatBloc,ChatState>(
  //                   builder: (context,state){
  //                     return TextField(
  //                       onSubmitted: (value) {
  //                         x = "fffffffffff";
  //                       context.read<ChatBloc>().add(UserMessageEvent(x));
  //                       },
  //                     );
  //                   },
  //                 )),
  //           ],
  //         ),
  //       ),
  //
  //     ),);
  // }

}

class BotMessageRow extends StatelessWidget {
  BotMessageRow({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    print(message);

    return Padding(
      padding: const EdgeInsets.all(AppSize.s8),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: ColorManager.gray,
            child: SvgPicture.asset(
              ImageAssets.botIcon,
              color: ColorManager.primary,
            ),
          ),
          const SizedBox(
            width: AppSize.s10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              color: ColorManager.blueGray,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppSize.s15),
              child: Text(
                message,
                style: getRegularStyle(
                    size: AppSize.s14, color: ColorManager.pureBlackColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class UserMessageRow extends StatelessWidget {
  UserMessageRow({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    print(message);

    return Padding(
      padding: const EdgeInsets.all(AppSize.s8),
      child: Row(
        children: [
          const Spacer(),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              color: ColorManager.primary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppSize.s15),
              child: Text(
                message,
                style: getRegularStyle(
                    size: AppSize.s14, color: ColorManager.pureWhite),
              ),
            ),
          ),
          const SizedBox(
            width: AppSize.s15,
          ),
          SvgPicture.asset(
            ImageAssets.seenIcon,
            color: ColorManager.primary,
          ),
        ],
      ),
    );
  }
}
