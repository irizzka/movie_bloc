import 'package:flutter/material.dart';
import 'package:flutter_movi_demo/ui/home_page_screen.dart';
import 'package:flutter_movi_demo/ui/profile_screen.dart';
import 'package:flutter_movi_demo/ui/search_screen.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 26.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(icon: Icon(Icons.format_list_bulleted), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },),
          IconButton(icon: Icon(Icons.search), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
          },),
          IconButton(icon: Icon(Icons.person), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
          },),
        ],
      ),
    );
  }
}