part of 'service.dart';

class MovieServices implements Services {
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void init() {
    // TODO: implement init
  }

  static Future<ServiceResult<List<Movie>>> getMovie(int page,
      {http.Client? client}) async {
    client ??= http.Client();
    try {
      String url = 'https://www.episodate.com/api/most-popular?page=$page';

      var response =
          await client.get(url as Uri, headers: {"Accept": "application/json"});

      if (response == 200) {
        var data = jsonDecode(response.body);

        List<Movie> movies = (data['tv_shows'] as Iterable)
            .map((e) => Movie.fromJson(e))
            .toList();

        return ServiceResult(data: movies);
      } else {
        return ServiceResult(
            status: false, messege: "Status code ${response.statusCode}");
      }
    } catch (e) {
      return ServiceResult(status: false, messege: e.toString());
    }
  }
}
