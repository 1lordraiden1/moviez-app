import 'package:flutter/material.dart';

class DashboardPages extends StatelessWidget {
  const DashboardPages({super.key});

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
                      Text("New Movies",
                          style: Theme.of(context).textTheme.bodySmall),
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
            const MovieCard(
              image: "assets/thumnails/oldyasuo.jpg",
              title: "Yasuo",
              genre1: "Action",
              genre2: "Warrior",
            )
          ],
        ),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  const MovieCard({
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
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage(image),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text("$genre1 ,$genre2",
                      style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star_outline_rounded),
                  Icon(Icons.star_outline_rounded),
                  Icon(Icons.star_outline_rounded),
                  Icon(Icons.star_outline_rounded),
                  Icon(Icons.star_outline_rounded),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
