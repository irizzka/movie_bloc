import 'package:flutter/material.dart';
import 'package:flutter_movi_demo/data/movie.dart';
import 'package:flutter_movi_demo/ui/movie_detail_screen.dart';

class MovieItem extends StatelessWidget {
  final Movie _item;

  MovieItem(this._item);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateToDetail(context),
      onLongPress: (){
        print('long press ');
      },
      child: Container(
        child: Column(
          children: <Widget>[
            Container(child: Text(_item.title, style: TextStyle(
              color: Colors.black
            ),),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),),
          ],
        ),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        width: 250,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(9)),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://image.tmdb.org/t/p/w600_and_h900_bestv2${_item.posterPath}")),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  offset: Offset(3, 3),
                  spreadRadius: 3.0,
                  blurRadius: 5.0)
            ]),
      ),
    );
  }

  void _navigateToDetail(BuildContext context) {
     Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MovieDetailScreen(_item)));
  }
}