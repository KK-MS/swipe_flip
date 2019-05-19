import 'dart:async';

// BLoC includes
import 'package:bloc/bloc.dart';

// App event imports
import 'package:swipe_flip/event/navigate_section_event.dart';

// NavigateSectionBloc
class NavigateSectionBloc extends Bloc<NavigateSectionEvent, int> {
  @override

  // Returns the [State] before any [Event]s have been `dispatched`.
  int get initialState => 0;

  // Stream<State> mapEventToState(Event event);
  @override
  Stream<int> mapEventToState(NavigateSectionEvent event) async* {
    // TODO change hardcoded number to output events enum.
    switch (event) {
      case NavigateSectionEvent.welcome: yield 0; break;
      case NavigateSectionEvent.config: yield 1; break;
      case NavigateSectionEvent.assist: yield 2; break;
      case NavigateSectionEvent.survey: yield 3; break;
      case NavigateSectionEvent.graph: yield 4; break;
    }
  }
}

