import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviez/cubit/movie_cubit.dart';
import 'package:moviez/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MovieCubit()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DashboardPages(),
      ),
    );
  }
}
