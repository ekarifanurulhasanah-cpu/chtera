import 'package:chtera/page/isi_chatt.dart';
import 'package:chtera/services/eka_chtsrvce.dart';
import 'package:flutter/material.dart';

class PutriChattpage extends StatefulWidget {
  const PutriChattpage({super.key});

  @override
  State<PutriChattpage> createState() => _PutriChattpageState();
}

class _PutriChattpageState extends State<PutriChattpage> {
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
                "Chatt",
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
                              chat[i].imge,
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
                                  chat[i].nme,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),SizedBox(width: 5),
                                Text(
                                  chat[i].subtitlel,
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
        ),
      ),
    );
  }
}
