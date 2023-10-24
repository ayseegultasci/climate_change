import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Suggestions"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  color: Color.fromRGBO(99, 210, 230, 1),
                  child: Center(
                    child: Text(
                      'What can we do to halt climate change?',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  color: Color.fromRGBO(47, 204, 232, 1),
                  child: Center(
                    child: Text(
                      'AVOID FAST FASHION',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  color: Color.fromRGBO(99, 210, 230, 1),
                  child: Center(
                    child: Text(
                      'REDUCE PLASTIC USAGE',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  color: Color.fromRGBO(47, 204, 232, 1),
                  child: Center(
                    child: Text(
                      'CHANGE THE WAY YOU TRAVEL',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  color: Color.fromRGBO(99, 210, 230, 1),
                  child: Center(
                    child: Text(
                      'SHOP LOCALLY',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
