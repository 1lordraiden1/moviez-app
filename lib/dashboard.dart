import 'package:flutter/material.dart';

import 'movie_card.dart';
import 'vertical_card.dart';

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
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      MovieCard(
                        image: "assets/thumnails/oldyasuo.jpg",
                        title: "Yasuo",
                        genre1: "Action",
                        genre2: "Warrior",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MovieCard(
                        image: "assets/thumnails/oldyasuo.jpg",
                        title: "Yasuo",
                        genre1: "Action",
                        genre2: "Warrior",
                      ),
                    ],
                  ),
                ),
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
                    children: const [
                      VerticalCard(
                        image: "assets/thumnails/oldyasuo.jpg",
                        title: "Old Yasuo",
                        genre1: "History",
                        genre2: "Action",
                      ),
                      VerticalCard(
                        image: "assets/thumnails/oldyasuo.jpg",
                        title: "Old Yasuo",
                        genre1: "History",
                        genre2: "Action",
                      ),
                    ],
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
