import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';
import '../bloc/counter_event.dart'; // 💡 Event class တွေကို import

class CounterButtons extends StatelessWidget {
  const CounterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: 'decrement',
          onPressed: () => counterBloc.add(CounterDecrementPressed()),
          child: Icon(Icons.remove),
        ),
        SizedBox(height: 8),
        FloatingActionButton(
          heroTag: 'increment',
          onPressed: () => counterBloc.add(CounterIncrementPressed()),
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}
