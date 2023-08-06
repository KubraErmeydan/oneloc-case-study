
class UserModelLogin {
  String? email;
  String? password;

  UserModelLogin({
    this.email,
    this.password,
  });
  UserModelLogin.fromJson(Map<String, dynamic> json) {
    email = json['email']?.toString();
    password = json['password']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}
