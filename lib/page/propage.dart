import 'package:chtera/services/ismnuservices.dart';
import 'package:flutter/material.dart';

class Propage extends StatefulWidget {
  const Propage({super.key});

  @override
  State<Propage> createState() => _PropageState();
}

class _PropageState extends State<Propage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan', style: TextStyle(color: Colors.tealAccent)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.teal, Colors.tealAccent]),
          ),
        ),
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
                width: 10,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, i) => Card(
                    elevation: 5,
                    child: Container(
                      width: 15,
                      height: 15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [ Icon(
                          ism[i].icon,
                        ),
                          SizedBox(width: 10),
                          Text(
                            ism[i].nme,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SizedBox(
        height: double.minPositive,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
          ],
        ),
      ),
    );
  }
}
