import 'package:chtera/services/eka_komservices.dart';
import 'package:chtera/services/put_servicepem.dart';
import 'package:flutter/material.dart';

class Pempage extends StatefulWidget {
  const Pempage({super.key});

  @override
  State<Pempage> createState() => _PempageState();
}

class _PempageState extends State<Pempage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Chattera",
              style: TextStyle(
                color: Colors.white,
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
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                "Status",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 5,
                child: PageView(children: []),
              ),
              SizedBox(
                width: size.width - 40,
                height: 150,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) => Card(
                    elevation: 5,
                    child: Container(
                      width: 100,
                      height: 140,
                      padding: const EdgeInsets.all(8.0),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(pem[i].imageURL, width: 80, height: 100),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text(pem[i].name)],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Komunitas",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 5,
                    child: PageView(children: []),
                  ),
                  SizedBox(
                    width: size.width - 40,
                    height: 600,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, i) => Card(
                        elevation: 5,
                        child: Container(
                          width: 270,
                          height: 60,
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  komm[i].url,
                                  width: 35,
                                  height: 35,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                width: 400,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      komm[i].judul,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      komm[i].sub,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
