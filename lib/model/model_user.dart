class UserModel {
  String? name;
  String? email;
  String? image;

  UserModel({
    this.name,
    this.email,
    this.image,
  });

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      name: map['name'],
      email: map['email'],
      image: map['image'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'image': image,
    };
  }
}
