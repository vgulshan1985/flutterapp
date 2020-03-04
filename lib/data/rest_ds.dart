import 'dart:async';
import 'package:flutter_app/utils/network_utils.dart';

class RestDatasource {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "http://techinventiv.com/dataapi/public/api/LoginWithPassowrd";

  Future<String> login(String mobile, String password) {
    return _netUtil.post(BASE_URL, body: {
      "mobile": mobile,
      "password": password
    }).then((dynamic res) {
      print(res.toString());
      return res.toString();
    });
  }
}