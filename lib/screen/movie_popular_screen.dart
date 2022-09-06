import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:project_simple/model/list_model_genres_movie.dart';
import 'package:project_simple/model/list_movie_popular.dart';
import 'package:http/http.dart' as http;

class MoviePopularState extends StatefulWidget {
  const MoviePopularState({Key? key}) : super(key: key);

  @override
  State<MoviePopularState> createState() => _MoviePopularStateState();
}

class _MoviePopularStateState extends State<MoviePopularState> {
  List<Results> dataListMovie = [];
  List<Genres> dataListGenresMovie = [];

  final String apiUrl =
      "https://api.themoviedb.org/3/movie/popular?api_key=3381d3a9aeb6d7c49eedcf44b4aad5e7&page=1";

  final String apiUrlGenresMovie =
      "https://api.themoviedb.org/3/genre/movie/list?api_key=3381d3a9aeb6d7c49eedcf44b4aad5e7";

  Future<PopularMovieList> getListRepository(BuildContext context) async {
    var uri = Uri.parse(apiUrl).replace();
    try {
      final response =
          await http.get(uri, headers: {}).timeout(const Duration(seconds: 30));
      if (response.statusCode == HttpStatus.ok) {
        return PopularMovieList.fromJson(jsonDecode(response.body));
      } else {
        return PopularMovieList.withError("Gagal Load Data");
      }
    } on TimeoutException catch (_) {
      return PopularMovieList.withError("Waktu Habis, Silahkan Coba Kembali");
    }
  }

  Future<ListGenresMovie> getListGenreRepository(BuildContext context) async {
    var uri = Uri.parse(apiUrlGenresMovie).replace();
    try {
      final response =
          await http.get(uri, headers: {}).timeout(const Duration(seconds: 30));
      if (response.statusCode == HttpStatus.ok) {
        return ListGenresMovie.fromJson(jsonDecode(response.body));
      } else {
        return ListGenresMovie.withError("Gagal Load Data");
      }
    } on TimeoutException catch (_) {
      return ListGenresMovie.withError("Waktu habis, reload ulang");
    }
  }

  void getListViewModel(BuildContext context) async {
    final response = await getListRepository(context);
    if (response.error == null) {
      setState(() {
        dataListMovie = response.results!;
      });
    } else {
      print(response.error.toString());
    }
  }

  void getListGenreViewModel(BuildContext context) async {
    final response = await getListGenreRepository(context);
    if (response.error == null) {
      setState(() {
        dataListGenresMovie = response.genres!;
      });
    } else {
      print(response.error.toString());
    }
  }

  @override
  void initState() {
    getListViewModel(context);
    getListGenreViewModel(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Search Movie by Genre",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: double.infinity,
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: dataListGenresMovie.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          print("genre id : ${dataListGenresMovie[index].id}");
                        },
                        child: Container(
                          width: 120,
                          alignment: Alignment.center,
                          child: Card(
                            child: Container(
                              width: double.infinity,
                              margin: const EdgeInsets.all(12),
                              child: Text(
                                dataListGenresMovie[index].name.toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Popular Movie",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: dataListMovie.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    print("movie id : ${dataListMovie[index].id.toString()}");
                  },
                  child: Card(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Image.network(
                            "https://image.tmdb.org/t/p/original${dataListMovie[index].posterPath}",
                            fit: BoxFit.scaleDown,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            dataListMovie[index].title.toString(),
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.star_border,
                                color: Colors.yellow,
                              ),
                              Text(
                                "${dataListMovie[index].voteAverage.toString()}/10",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
