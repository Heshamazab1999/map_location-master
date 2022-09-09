import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:map_location/add_image.dart';
import 'package:map_location/details_screen.dart';
import 'package:map_location/main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> body = [MapSample(), AddImage(), DetailsScreen()];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body.elementAt(_index),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.add_a_photo, size: 30),
          Icon(Icons.details, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _index = index;
          });
          //Handle button tap
        },
        index: _index,
      ),
    );
  }
}
