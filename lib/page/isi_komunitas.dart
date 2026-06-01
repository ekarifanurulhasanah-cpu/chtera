import 'package:flutter/material.dart';

class IsiKomunitas extends StatefulWidget {
  final String url;
  final String judul;
  const IsiKomunitas({super.key, required this.url, required this.judul});

  @override
  State<IsiKomunitas> createState() => _IsiKomunitasState();
}

class _IsiKomunitasState extends State<IsiKomunitas> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipOval(child: Image.asset(widget.url, width: 45, height: 45)),
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
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.asset("asset/ngajie.jpeg"),
                      SizedBox(width: 5),
                      Text('Ayo ikuti pengajoian hari ini'),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.asset("asset/ngajie.jpeg"),
                          SizedBox(width: 5),
                          Text(
                            'Pengajian hari ini',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("janlup follow yaa"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
