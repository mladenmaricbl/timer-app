import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:timer_app/app.dart';
import 'package:timer_app/timer_observer.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: TimerObserver(),
  );
}
