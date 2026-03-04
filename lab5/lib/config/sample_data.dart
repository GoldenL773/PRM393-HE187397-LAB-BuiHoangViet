import 'package:lab5/entity/Movie.dart';

List<Movie> get sampleMovies => [
  Movie(
    id: 1,
    title: 'Interstellar',
    posterUrl: 'assets/images/poster1.jpg',
    overview:
        'A team of explorers travels through a wormhole in space to find a new home for humanity before Earth becomes uninhabitable.',
    genres: 'Sci-Fi, Adventure, Drama',
    rating: 1.6,
    trailer: [
      'Official Trailer #1',
      'Teaser Trailer',
      'Behind the Scenes',
    ],
  ),
  Movie(
    id: 2,
    title: 'Inception',
    posterUrl: 'assets/images/poster2.png',
    overview:
        'A skilled thief enters people\'s dreams to steal secrets and is offered a chance at redemption by planting an idea instead.',
    genres: 'Action, Sci-Fi, Thriller',
    rating: 10.0,
    trailer: [
      'Official Trailer',
      'TV Spot',
      'Director\'s Cut',
    ],
  ),
  Movie(
    id: 3,
    title: 'The Dark Knight',
    posterUrl: 'assets/images/poster3.png',
    overview:
        'Batman faces the Joker, a criminal mastermind who pushes Gotham City into chaos and tests the limits of heroism.',
    genres: 'Action, Crime, Drama',
    rating: 4.0,
    trailer: [
      'Official Trailer #1',
      'Joker Teaser',
      'IMAX Sneak Peek',
    ],
  ),
];
