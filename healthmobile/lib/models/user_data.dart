class UserData {
  final int? id;
  final String nom;
  final String prenom;
  final int age;
  UserData(
      {this.id, required this.nom, required this.prenom, required this.age});
  Map<String, dynamic> toMap() {
    return {'id': id, 'nom': nom, 'prenom': prenom, 'age': age};
  }
}
