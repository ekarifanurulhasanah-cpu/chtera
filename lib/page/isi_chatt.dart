import 'package:flutter/material.dart';

class IsiChatt extends StatefulWidget {
  final String image;
  final String nme;
  const IsiChatt({super.key, required this.image, required this.nme});

  @override
  State<IsiChatt> createState() => _IsiChattState();
}

class _IsiChattState extends State<IsiChatt> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipOval(
                  child: Image.asset(widget.image, width: 45, height: 45),
                ),
              ],
            ),
            Text(
              widget.nme,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 210),
            Icon(Icons.call),
            SizedBox(width: 10),
            Icon(Icons.video_call),
            SizedBox(width: 10),
            IconButton(
              onPressed: () {
                Navigator.pop(context) ;
              },
              icon: Icon(Icons.menu),
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
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('haii, kamu lagi apa '),
                ),
              ),
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('aku lagi rebahan'),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('lagi sibuk ya?'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
