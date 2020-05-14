import 'dart:async';
import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(
    CounterEvent event,
  ) async* {
    // TODO: implement mapEventToState
    switch (event){
      case CounterEvent.increment:
            yield state +1;
        break;
      case CounterEvent.decrement:
            yield state -1;
        break;
    }
  }
}