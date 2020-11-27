import 'package:cv_generator_app/page/home.dart';
import 'package:cv_generator_app/redux/reducer.dart';
import 'package:cv_generator_app/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'model/app_state.dart';

void main() {
  final _initialState = new AppState();
  final Store<AppState> _store =
      Store<AppState>(reducer, initialState: _initialState);
}

class Application extends StatelessWidget {
  final Store<AppState> store;

  Application({this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
    store: store,
      child: MaterialApp(
        title: APP_NAME,
        home: HomePage(),
      ),
    );
  }
}
