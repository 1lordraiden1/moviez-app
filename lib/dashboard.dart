import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviez/cubit/movie_cubit.dart';

import 'movie_card.dart';
import 'vertical_card.dart';

class DashboardPages extends StatefulWidget {
  const DashboardPages({super.key});

  @override
  State<DashboardPages> createState() => _DashboardPagesState();
}

class _DashboardPagesState extends State<DashboardPages> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    context.read<MovieCubit>().getMovies(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFFFDFDFF),
                    Color(0xFFF3F4F8),
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Moviez",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        "New Movies",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 280,
                    width: double.infinity,
                    child: BlocBuilder<MovieCubit, MovieState>(
                        builder: (context, state) {
                      return (state is MovieLoaded)
                          ? Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: state.movies
                                      .sublist(0, 10)
                                      .map((movie) => Padding(
                                            padding: EdgeInsets.only(
                                                left: (movie ==
                                                        state.movies.first)
                                                    ? 24
                                                    : 0),
                                            child: MovieCard(movie: movie),
                                          ))
                                      .toList()),
                            )
                          : Center(
                              child: Text("No Data Found"),
                            );
                    })),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "From Holywood",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: ListView(
                    children: [],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
