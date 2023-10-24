import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  final String imagePath;
  final String text;

  const ImageTile({Key? key, required this.imagePath, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black54,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(imagePath),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
