import 'package:flutter/material.dart';

class Kmntaspge extends StatefulWidget {
  final String url;
  final String judul;
  const Kmntaspge({super.key, required this.url, required this.judul});

  @override
  State<Kmntaspge> createState() => _KmntaspgeState();
}

class _KmntaspgeState extends State<Kmntaspge> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipOval(
              child: Image.asset(widget.url, width: 45, height: 45),
            ),
            SizedBox(width: 5),
            Text(
              widget.judul,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal.shade400, Colors.teal.shade500],
            ),
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.greenAccent, Colors.teal],
          ),
        ),
      ),
    );
  }
}
