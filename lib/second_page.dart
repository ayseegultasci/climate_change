// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SecondPage(),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Image.asset(
                  'images/world.jpeg',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'WHAT IS CLIMATE CHANGE?',
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0, right: 8.0, left: 8.0),
              child: Text(
                "  Climate change refers to the long-term changes in the Earth's climate that are caused primarily by human activities such as burning foss.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Image.asset(
                  'images/global_warming.jpeg',
                  width: 200,
                  height: 200,
                ),
                Flexible(
                  child: Text(
                    '''Did you know the average temperature on Earth has increased by 1°C in the last century? Rising temperatures don’t just mean that we’ll get warmer weather, the increasing temperatures will make worldwide weather more extreme.''',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                _launchWebsite();
              },
              child: Text("See More Details"),
            ),
          ],
        ),
      ),
    );
  }
}

_launchWebsite() async {
  const url =
      'https://climate.peopleinneed.net/climate-change?gclid=CjwKCAjws9ipBhB1EiwAccEi1Ec8ON_JySQKfBbTfUFoCRPf8fdychVHvpddktsZlxWOY1Dpnm51TxoCyRsQAvD_BwE';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Could not launch $url";
  }
}
