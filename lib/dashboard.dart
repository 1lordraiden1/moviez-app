import 'package:flutter/material.dart';

class DashboardPages extends StatelessWidget {
  const DashboardPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Moviez",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text("New Movies",
                        style: Theme.of(context).textTheme.labelMedium),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
