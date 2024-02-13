part of 'movie_cubit.dart';

abstract class MovieState extends Equatable {
  const MovieState();
  @override
  List<Object> get probs => [];
}

class MovieInit extends MovieState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class MovieLoaded extends MovieState {
  MovieLoaded({required this.movies});

  final List<Movie> movies;

  @override
  List<Object?> get props => [movies];
}

// ignore: must_be_immutable
class MovieLoadedFailed extends MovieState {
  MovieLoadedFailed({required this.messege});

  String messege;
  @override
  List<Object?> get props => [messege];
}
