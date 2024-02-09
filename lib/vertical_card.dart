import 'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({
    super.key,
    required this.title,
    required this.genre1,
    required this.genre2,
    required this.image,
  });

  final String title;
  final String genre1;
  final String genre2;

  final String image;

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
              image: AssetImage(image),
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
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "$genre1 ,$genre2",
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
