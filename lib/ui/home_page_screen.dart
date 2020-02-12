import 'package:flutter/material.dart';
import 'package:flutter_movi_demo/bloc/block_provider.dart';
import 'package:flutter_movi_demo/bloc/fetch_movie_bloc.dart';
import 'package:flutter_movi_demo/data/movie.dart';
import 'package:flutter_movi_demo/ui/search_screen.dart';
import 'package:flutter_movi_demo/ui/widgets/bottom_bar.dart';

import 'movi_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  ScrollController _scrollController = ScrollController();
  var bloc;

  @override
  void initState() {
    bloc = BlocProvider.of<MovieBloc>(context);
    bloc.fetchMovies();
    print('init');

    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent ){
        bloc.fetchMovies();
        print('fwafwafaaaaaaaa');
      }
    }
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
      ),
      body: buildBody(context),
      bottomNavigationBar: BottomBar(),
    );
  }

  Widget buildBody(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: StreamBuilder<List<Movie>>(
        stream: bloc.movieStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return _buildMovieList(snapshot.data);
          } else {
           return Center(child: CircularProgressIndicator());
          }
        }
      ),
    );
  }

  Widget _buildMovieList(List<Movie> list) {
    return ListView.builder(
      controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(child: MovieItem(list[index]));
        });
  }
}


