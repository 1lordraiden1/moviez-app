import 'package:flutter/material.dart';
import 'package:moviez/models/movie.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 279,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: NetworkImage(movie.image),
              width: 300,
              height: 207,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 300,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text("${movie.startDate} ,${movie.endDate}",
                        style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
