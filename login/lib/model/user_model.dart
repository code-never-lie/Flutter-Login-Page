class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;

  UserModel(this.uid, this.email, this.firstName, this.secondName);

  // receiving  data from server

  factory UserModel.fromMap(map) {
    return UserModel(
        map['uid'], map['email'], map['firstName'], map['secondName']);
  }

  // sending data to server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': secondName,
    };
  }
}
