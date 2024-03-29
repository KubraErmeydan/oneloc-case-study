
class UserModelRegister {
  String? username;
  String? email;
  String? phoneNumber;
  String? password;

  UserModelRegister({
     this.username,
     this.email,
     this.phoneNumber,
     this.password,
  });
  UserModelRegister.fromJson(Map<String, dynamic> json) {
    username = json['username']?.toString();
    email = json['email']?.toString();
    phoneNumber = json['phoneNumber']?.toString();
    password = json['password']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['username'] = username;
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;
    data['password'] = password;
    return data;
  }
}
