import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movi_demo/data/movie.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie _detail;

  MovieDetailScreen(this._detail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_detail.title),
      ),
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 300,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
            "https://image.tmdb.org/t/p/w600_and_h900_bestv2${_detail.backdropPath}",
            fit: BoxFit.cover,
          )),
          Text('Info', style: TextStyle(
            fontSize: 22,
          ),),
          Text(_detail.overview),
          Text(_detail.releaseDate),
          Text(_detail.adult.toString()),
          Text(_detail.popularity.toString())
        ],
      )),
    );
  }
}
