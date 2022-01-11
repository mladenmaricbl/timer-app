import 'package:flutter/material.dart';
import 'package:timer_app/timer/widgets/action_buttons.dart';
import 'package:timer_app/timer/widgets/background.dart';
import 'package:timer_app/timer/widgets/timer.dart';

class TimerView extends StatelessWidget {
  const TimerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Timer')),
      body: Stack(
        children: [
          const Background(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100.00),
                child: Timer(),
              ),
              ActionButtons(),
            ],
          )
        ],
      ),
    );
  }
}
