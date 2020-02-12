import 'package:flutter/material.dart';
import 'package:flutter_movi_demo/ui/widgets/bottom_bar.dart';

class SearchScreen extends StatelessWidget {

  String textField;
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Search'),
        ),

      body: Column(
        children: <Widget>[
          Container(
            child: TextField(
              onChanged: (value){
                textField = value;
                print(textField);
              },
              controller: textController,
              style: TextStyle(
                color: Colors.white
              ),
             autofocus: false,
              decoration: InputDecoration(
                focusColor: Colors.white,
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
            ),

          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
