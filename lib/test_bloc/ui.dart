import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oranos/oranobot/presentation/resources/assets_manager.dart';
import 'package:oranos/oranobot/presentation/resources/color_manager.dart';
import 'package:oranos/oranobot/presentation/resources/styles_manager.dart';
import 'package:oranos/oranobot/presentation/resources/values_manager.dart';
import 'package:oranos/test_bloc/test_bloc.dart';
import 'package:oranos/test_bloc/test_events.dart';

class IncreamentScreen extends StatelessWidget {
  const IncreamentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> CounterBloc(),
      child:  CounterView(),
    );
  }
}


class CounterView extends StatefulWidget {

   CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
   TextEditingController responseController = TextEditingController();

   List<String> messages = [
     'Hi, Whats You Name Firstname?',
     'Ok, Whats Your Lastname?',
     'Mr , What\'s your Title? ',
     'What Categories you will need expert In?',
   ];

   List<Widget> q = [
     BotMessageRow(message: 'Hi, Whats You Name Firstname?'),
   ];

   bool _isChecked = true;

   String _currText = '';

   List<String> text = [
     "Security",
     "Supply Chain",
   "Inforamtion Technology",
   "Human Resource",
   "Business Reasearch"
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: state+1,
                      itemBuilder: (BuildContext context, index){
                        print('state = $state');
                        return q.length != 4
                            ? q[index]
                            : Container(
                          width: double.infinity,
                              height: MediaQuery.of(context).size.height*30,
                              child: Column(
                          children: text
                                .map((t) => CheckboxListTile(
                              title: Text(t),
                              value: _isChecked,
                              onChanged: (val) {
                                setState(() {
                                  _isChecked = val!;
                                  if (val == true) {
                                    _currText = t;
                                  }
                                });
                              },
                          ))
                                .toList(),
                        ),
                            );
                  }),
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  child: TextField(
                    controller: responseController,
                    onSubmitted: (val){
                      q.add(UserMessageRow(message: val));
                      context.read<CounterBloc>().getNextQuestion();
                      q.add(BotMessageRow(message: messages[state+1]));
                      responseController.clear();

                    },
                  ),
                )
              ],
            );
          },
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              context.read<CounterBloc>().getNextQuestion();
            },
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
             // context.read<CounterBloc>().decrement('5555555555');
            },
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.brightness_6),
            onPressed: () {

            },
          ),
        ],
      ),
    );
  }
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