import 'package:chtera/page/eka_daftar.dart';
import 'package:chtera/page/putri_dasboard.dart';
import 'package:flutter/material.dart';

class EkaLogin extends StatefulWidget {
  const EkaLogin({super.key});

  @override
  State<EkaLogin> createState() => _EkaLoginState();
}

class _EkaLoginState extends State<EkaLogin> {
  late TextEditingController _username = TextEditingController();
  TextEditingController _telephone = TextEditingController();
  TextEditingController _tanggal = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/hij.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(60),
            width: 20,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(30),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    ' Login ',
                    style: TextStyle(
                      color: Colors.tealAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        BoxShadow(
                          offset: Offset(1, 1),
                          color: Colors.blueAccent,
                          blurRadius: 3,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Text('Username :', style: TextStyle(color: Colors.white),)],
                  ),
                  TextField(
                    controller: _username,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      alignLabelWithHint: true,
                      focusColor: Colors.blueAccent,
                      fillColor: Colors.grey,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Text('Telphone :', style: TextStyle(color: Colors.white),)],
                  ),
                  TextField(
                    controller: _telephone,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Telephone',
                      alignLabelWithHint: true,
                      focusColor: Colors.blueAccent,
                      fillColor: Colors.grey,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Text('Tanggal Lahir :', style: TextStyle(color: Colors.white),)],
                  ),
                  TextField(
                    controller: _tanggal,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Tanggal Lahir',
                      alignLabelWithHint: true,
                      focusColor: Colors.white,
                      fillColor: Colors.grey,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          if (_username.value.text ==
                                  Text('${_username.toString()}') &&
                              _telephone.value.text ==
                                  Text('${_username.toString()}') &&
                              _tanggal.value.text ==
                                  Text('${_username.toString()}')) {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Sukes'),
                                content: Text(
                                  'Login Sukses  ${_username.text}',
                                ),
                              ),
                            );
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Gagal'),
                                content: Text('SILAHKAN COBA LAGI!!'),
                              ),
                            );
                          }
                        },
                        style: ButtonStyle(
                          maximumSize: WidgetStatePropertyAll(
                            Size(size.width - 80, 50),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EkaDaftar(),
                            ),
                          ),
                          child: Text(
                            'Daftar',
                            style: TextStyle(color: Colors.tealAccent),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          if (_username.value.text ==
                                  Text('${_username.toString()}') &&
                              _telephone.value.text ==
                                  Text('${_username.toString()}') &&
                              _tanggal.value.text ==
                                  Text('${_username.toString()}')) {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Sukes'),
                                content: Text(
                                  'Selamat Data  ${_username.text.toString()}',
                                ),
                              ),
                            );
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Gagal'),
                                content: Text('SILAHKAN COBA LAGI!!'),
                              ),
                            );
                          }
                        },
                        style: ButtonStyle(
                          maximumSize: WidgetStatePropertyAll(
                            Size(size.width - 80, 50),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PutriDasboard(),
                            ),
                          ),
                          child: Text(
                            'Masuk',
                            style: TextStyle(color: Colors.tealAccent),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 120),
                      Text(
                        "Chattera",
                        style: TextStyle(
                          color: Colors.tealAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
