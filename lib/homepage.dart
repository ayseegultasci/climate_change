import 'package:flutter/material.dart';
import 'page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Climate Change"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "The Climate is Changing Why Aren't We?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 400,
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ImageTile(
                    imagePath: 'images/save_planet.jpeg',
                    text: "It's not too late to stop dangerous climate change!",
                  ),
                  ImageTile(
                    imagePath: 'images/clean_the_planet.jpeg',
                    text:
                        "Every piece of plastic ever produced is still out there!",
                  ),
                  ImageTile(
                    imagePath: 'images/climate_change.jpeg',
                    text:
                        "We're running out of time, act now before it's too late!",
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/list_page');
                    },
                    child: Icon(Icons.home),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/second_page');
                    },
                    child: Icon(Icons.search),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
