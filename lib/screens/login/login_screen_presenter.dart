import 'package:flutter_app/data/rest_ds.dart';
import 'package:flutter_app/model/user.dart';
import 'package:flutter_app/data/database_helper.dart';

abstract class LoginScreenContract {
  void onLoginSuccess(String user);
  void onLoginError(String errorTxt);
}

class LoginScreenPresenter {
  LoginScreenContract _view;
  RestDatasource api = new RestDatasource();
  LoginScreenPresenter(this._view);

  doLogin(String username, String password) async {
    api.login(username, password).then((String response) {
      processLoginSuccess(response);
    }).catchError((Exception error) => _view.onLoginError(error.toString()));
  }

  void processLoginSuccess(String user) async {
//      var db = new DatabaseHelper();
//      await db.saveUser(user);
      _view.onLoginSuccess(user);
  }
}