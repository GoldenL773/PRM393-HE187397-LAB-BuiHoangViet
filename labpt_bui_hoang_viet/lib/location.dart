class Location {
  final String id;
  final String name;
  final String image;
  final String address;
  final int count;
  final double star;
  final String description;

  Location({
    required this.id,
    required this.name,
    required this.image,
    required this.address,
    required this.count,
    required this.star,
    required this.description,
  });

  Location copyWith({
    String? id,
    String? name,
    String? image,
    String? address,
    int? count,
    double? star,
    String? description,
  }) {
    return Location(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      address: address ?? this.address,
      count: count ?? this.count,
      star: star ?? this.star,
      description: description ?? this.description,
    );
  }

  static List<Location> getLocations() {
    return [
      Location(
        id: '1',
        name: 'Oeschinen Lake Campground',
        image: 'https://fastly.picsum.photos/id/935/600/240.jpg?hmac=OJj8XI8MSDNlRbYwsO96lL82Avc_ReDpGczEe5GC_-o',
        address: 'Kandersteg, Switzerland',
        count: 41,
        star: 4.5,
        description: 'Nothing to see here',
      ),
      Location(
        id: '2',
        name: 'Location 2',
        image: 'https://fastly.picsum.photos/id/935/600/240.jpg?hmac=OJj8XI8MSDNlRbYwsO96lL82Avc_ReDpGczEe5GC_-o',
        address: 'Address 2',
        count: 2,
        star: 2,
        description: 'Description for Location 2',
      ),
      Location(
        id: '3',
        name: 'Location 3',
        image: 'https://fastly.picsum.photos/id/935/600/240.jpg?hmac=OJj8XI8MSDNlRbYwsO96lL82Avc_ReDpGczEe5GC_-o',
        address: 'Address 3',
        count: 3,
        star: 3,
        description: 'Description for Location 3',
      ),
    ];
  }
}
