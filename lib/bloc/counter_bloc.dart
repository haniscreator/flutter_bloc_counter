// lib/bloc/counter_bloc.dart
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends HydratedBloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<CounterIncrementPressed>((event, emit) {
      emit(CounterState(state.value + 1));
    });

    on<CounterDecrementPressed>((event, emit) {
      emit(CounterState(state.value - 1));
    });
  }

  @override
  CounterState? fromJson(Map<String, dynamic> json) {
    return CounterState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(CounterState state) {
    return state.toJson();
  }
}
