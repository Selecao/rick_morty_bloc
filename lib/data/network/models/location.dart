class Location {
  final String name;
  String image;
  final String status;
  final String dimension;
  String description;

  Location(
    this.name,
    this.status,
    this.dimension, {
    this.image = 'Not available',
    this.description = 'Not available',
  });
}
