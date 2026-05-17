import 'package:flutter/material.dart';

class IsiChatt extends StatefulWidget {
  const IsiChatt({super.key});

  @override
  State<IsiChatt> createState() => _IsiChattState();
}

class _IsiChattState extends State<IsiChatt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [Icon(Icons.arrow_back), Text('js')]),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.teal, Colors.tealAccent]),
          ),
        ),
      ),
      body: ,
    );
  }
}
