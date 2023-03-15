import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    //Event converts to State
    on<Increment>((event, emit)  {
      return emit(CounterState(count: state.count + 1)); //state.count => currentvalue
    });

    on<Decrement>((event, emit)  {
      return emit(CounterState(count: state.count - 1));
    });
  }
}
