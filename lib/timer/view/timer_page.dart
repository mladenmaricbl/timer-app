import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer_app/timer/bloc/timer_bloc.dart';
import 'package:timer_app/timer/ticker.dart';
import 'package:timer_app/timer/view/timer_view.dart';

class TimerPage extends StatelessWidget {
  final Ticker _ticker = const Ticker();

  const TimerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerBloc(ticker: _ticker),
      child: const TimerView(),
    );
  }
}
