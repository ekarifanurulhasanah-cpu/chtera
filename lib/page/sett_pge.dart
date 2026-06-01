import 'package:flutter/material.dart';

class SettPge extends StatefulWidget {
  const SettPge({super.key});

  @override
  State<SettPge> createState() => _SettPgeState();
}

class _SettPgeState extends State<SettPge> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Settings',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.teal, Colors.tealAccent]),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.language,size: 30,),
                    SizedBox(width: 10),
                    Text("Language", style: TextStyle(fontSize: 25),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 35),
                    Icon(Icons.sd_storage_rounded,size: 30,),
                    SizedBox(width: 10),
                    Text("Penyimpanan ", style: TextStyle(fontSize: 25),),
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
