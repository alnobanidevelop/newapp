class User {
  String id;
  String name;
  int age;

  User.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.id = json['name'];
    this.id = json['age'];
  }
}

