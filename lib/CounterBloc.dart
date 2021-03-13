import 'package:flutter_app_bloc_test_2/CounterEvent.dart';
import 'package:flutter_app_bloc_test_2/CounterState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is CounterArtir) {

      yield CounterState(state.counter+1);
    }      if(event is CounterAzalt){

      yield CounterState(state.counter-1);
    }
  }
}
