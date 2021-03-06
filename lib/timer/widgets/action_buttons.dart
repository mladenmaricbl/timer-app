import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer_app/timer/bloc/timer_bloc.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if(state is TimerInitial || state is TimerComplete) ...[
              FloatingActionButton(
                onPressed: () {
                  context.read<TimerBloc>().add(TimerStarted(duration: state.duration));
                },
                child: const Icon(Icons.play_arrow),
              )
            ],
            if(state is TimerRunInProgress) ...[
              FloatingActionButton(
                onPressed: () {
                  context.read<TimerBloc>().add(const TimerPaused());
                },
                child: const Icon(Icons.pause),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<TimerBloc>().add(const TimerReseted());
                },
                child: const Icon(Icons.replay),
              ),
            ],
            if(state is TimerRunPause) ...[
              FloatingActionButton(
                onPressed: () {
                  context.read<TimerBloc>().add(const TimerResumed());
                },
                child: const Icon(Icons.play_arrow),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<TimerBloc>().add(const TimerReseted());
                },
                child: const Icon(Icons.replay),
              ),
            ]
          ],
        );
      },
    );
  }
}
