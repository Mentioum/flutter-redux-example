import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_flutter/pages/home_page.dart';
import 'package:redux_flutter/models/app_state.dart';
import 'package:redux_flutter/reducers/app_reducer.dart';

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {
  String title = "ProcrastiLater";
  // This widget is the root of your application.

  final store = new Store<AppState>(
    appReducer,
    initialState: new AppState(),
    middleware: [],
  );

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
      store: store,
      child: new MaterialApp(
        title: title,
        home: new HomePage(title),
      ),
    );
  }
}
