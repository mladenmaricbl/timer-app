part of 'timer_bloc.dart';

@immutable
abstract class TimerEvent extends Equatable{

  const TimerEvent();

  @override
  List<Object> get props => [];
}

class TimerStarted extends TimerEvent{
  final int duration;

  const TimerStarted({required this.duration});
}

class TimerPaused extends TimerEvent{

  const TimerPaused();
}

class TimerResumed extends TimerEvent{

  const TimerResumed();
}

class TimerReseted extends TimerEvent{

  const TimerReseted();
}

class TimerTicked extends TimerEvent{
  final int duration;

  const TimerTicked({required this.duration});

  @override
  List<Object> get props => [duration];
}