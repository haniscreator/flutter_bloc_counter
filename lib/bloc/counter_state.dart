// lib/bloc/counter_state.dart
class CounterState {
  final int value;

  CounterState(this.value);

  Map<String, dynamic> toJson() => {'value': value};

  factory CounterState.fromJson(Map<String, dynamic> json) {
    return CounterState(json['value'] as int);
  }
}
