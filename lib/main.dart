import 'package:flutter/material.dart';
import 'package:flutter_movi_demo/bloc/block_provider.dart';
import 'package:flutter_movi_demo/bloc/fetch_movie_bloc.dart';
import 'package:flutter_movi_demo/ui/home_page_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: MovieBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    );
  }
}


