import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

import '../User.dart';
import '../main.dart';

class NickViewModel extends BaseViewModel {
  String _title = 'Home View';
  String _nickUser;
  String get title => _title;
  final _formKey = GlobalKey<FormState>();
  GlobalKey get formKey => _formKey;

  String validateNick(String value) {
    if (value.length == 0) {
      notifyListeners();
      return "Please enter nick";
    }
    _nickUser = value;
    notifyListeners();
    return null;
  }

  void sentNickForm() {
    if (_formKey.currentState.validate()) {
      getIt<User>().setName(_nickUser);

      // Navigator.of(BuildContext context).pushNamed<void>(Routes.todoList);
      //Navigator.of(context).pushNamed<void>(Routes.registerScreen),
    }
  }
}
