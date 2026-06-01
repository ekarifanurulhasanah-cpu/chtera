import 'package:chtera/page/cent_pge.dart';
import 'package:chtera/page/cont_page.dart';
import 'package:chtera/page/keam_pge.dart';
import 'package:chtera/page/sett_pge.dart';
import 'package:flutter/material.dart';

class Propage extends StatefulWidget {
  const Propage({
    super.key,
  });

  @override
  State<Propage> createState() => _PropageState();
}

class _PropageState extends State<Propage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Chattera', style: TextStyle(color: Colors.tealAccent)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.teal, Colors.tealAccent]),
          ),
        ),
      ),
      endDrawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
        child: Container(
          color: Colors.teal.shade300,
          padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  Text(
                    "Pengaturan",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(width: 15),
                        TextButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SettPge(
                              ),
                            ),
                          ),
                          child: Text(
                            'Settings',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                        ),
                    ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 15),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContPage()),
                    ),
                    child: Text(
                      'Contact',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.shield),
                  SizedBox(width: 15),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KeamPge()),
                    ),
                    child: Text(
                      'Privacy',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.network_wifi_sharp),
                  SizedBox(width: 15),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CentPge()),
                    ),
                    child: Text(
                      'Connetion',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
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
            ClipOval(
              child: Image.asset('asset/file.jpeg', width: 80, height: 80),
            ),
            SizedBox(height: 10),
            Text(
              'Luna Maya',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            Text(
              '+62 87656982333',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  elevation: 1,
                  child: Container(
                    width: 240,
                    color: Colors.transparent,
                    padding: EdgeInsets.all(5.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.home, color: Colors.black)],
                    ),
                  ),
                ),
                Card(
                  elevation: 1,
                  child: Container(
                    width: 240,
                    color: Colors.transparent,
                    padding: EdgeInsets.all(5.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.folder, color: Colors.black)],
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
