import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer_app/timer/bloc/timer_bloc.dart';

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Center(
      child: BlocBuilder<TimerBloc, TimerState>   (
      //buildWhen: (prev, state) => prev.duration != state.duration,
      builder: (context, state) {
        final duration = state.duration;
        final minutesStr = ((duration / 60) % 60).floor().toString().padLeft(2, '0');
        final secondsStr = (duration % 60).floor().toString().padLeft(2, '0');
          return Text(
            '$minutesStr:$secondsStr',
            style: Theme.of(context).textTheme.headline1,
          );
        },
      ),
    );
  }
}
