class Character {
  final String name;
  final String status;
  final String avatar;
  final String race;
  final String gender;
  String biography;
  final String birthplace;
  String location;

  Character(this.name, this.status, this.avatar, this.race, this.gender,
      this.birthplace,
      {this.biography = 'Not available', this.location = 'Not available'});
}
