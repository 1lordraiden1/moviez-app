import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:io';

import 'package:moviez/models/movie.dart';
import 'package:moviez/service/service.dart';
import 'package:moviez/service/service.dart';

part 'movie_service.dart';

abstract class Services {
  void init();
  void dispose();
}

class ServiceResult<T> {
  bool? status;

  T? data;

  String? messege;

  ServiceResult({
    this.status,
    this.data,
    this.messege,
  });
}
