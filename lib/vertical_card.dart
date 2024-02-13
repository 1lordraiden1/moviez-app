import 'package:flutter/material.dart';
import 'package:moviez/models/movie.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({
    super.key,required this.movie,
  });

  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      //height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image(
              image: NetworkImage(movie.image),
              width: 170,
              height: 200,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "${movie.startDate} ,${movie.endDate}",
                style: Theme.of(context).textTheme.bodySmall,
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
        ],
      ),
    );
  }
}
