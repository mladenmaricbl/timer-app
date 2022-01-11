part of 'timer_bloc.dart';

@immutable
abstract class TimerState extends Equatable {
  final int duration;

  const TimerState({required this.duration});

  @override
  List<Object> get props => [duration];
}

class TimerInitial extends TimerState {
  const TimerInitial(int duration) : super(duration: duration);
}

class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(int duration) : super(duration: duration);
}

class TimerRunPause extends TimerState {
  const TimerRunPause(int duration) : super(duration: duration);
}

class TimerComplete extends TimerState {
  const TimerComplete() : super(duration: 0);
}


