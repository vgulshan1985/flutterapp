class User {
  String _mobile;
  String _password;
  User(this._mobile, this._password);

  User.map(dynamic obj) {
    this._mobile = obj["mobile"];
    this._password = obj["password"];
  }

  String get mobile => _mobile;
  String get password => _password;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["mobile"] = _mobile;
    map["password"] = _password;

    return map;
  }
}