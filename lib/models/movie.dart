import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  Movie({
    required this.name,
    required this.id,
    required this.permalink,
    required this.startDate,
    required this.endDate,
    required this.country,
    required this.network,
    required this.image,
  });
  final String name;
  final int id;
  final String permalink;
  final String startDate;
  final String endDate;
  final String country;
  final String network;
  final String image;
  @override
  factory Movie.fromJson(Map<String, dynamic> map) => Movie(
        name: map['name'],
        id: map['id'],
        permalink: map['permalink'],
        startDate: map['startDate'],
        endDate: map['endDate'],
        country: map['country'],
        network: map['network'],
        image: map['image'],
      );
  List<Object?> get props => [
        name,
        id,
        permalink,
        startDate,
        endDate,
        country,
        network,
        image,
      ];
}
