import "package:redux_flutter/models/app_state.dart";
import 'package:redux_flutter/reducers/counter_reducer.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
    isLoading: false,
    count: counterReducer(state.count, action),
  );
}
