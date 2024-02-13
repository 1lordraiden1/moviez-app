

import 'package:equatable/equatable.dart';
import 'package:moviez/cubit/movie_cubit.dart';
import 'package:moviez/models/movie.dart';
import 'package:bloc/bloc.dart';
import 'package:moviez/service/service.dart';

part 'movie_states.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit() : super(MovieInit());
  final List<Movie> movies = [];

  Future<void> getMovies(int page) async {
    ServiceResult<List<Movie>> result = await MovieServices.getMovie(page);

    if (result.data != null) {
      emit(MovieLoaded(movies: result.data!));
    } else {
      emit(MovieLoadedFailed(messege: result.messege!));
    }
  }
}
