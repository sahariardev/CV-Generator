import 'package:cv_generator_app/model/app_state.dart';
import 'package:cv_generator_app/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (storeContext, storeState) {
        return Scaffold(
          appBar: AppBar(title: Text(HOME_PAGE_TITLE)),
          body: Container(),
        );
      },
    );
  }
}
