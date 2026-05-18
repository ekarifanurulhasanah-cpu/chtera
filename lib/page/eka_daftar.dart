import 'package:chtera/page/eka_login.dart';
import 'package:chtera/page/putri_dasboard.dart';
import 'package:flutter/material.dart';

class EkaDaftar extends StatefulWidget {
  const EkaDaftar({super.key});

  @override
  State<EkaDaftar> createState() => _EkaDaftarState();
}

class _EkaDaftarState extends State<EkaDaftar> {
  late TextEditingController _username = TextEditingController();
  TextEditingController _telephone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: 500,
            height: 800,
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
                      ' DAFTAR ',
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
                        labelText: 'Username',
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Text('Telephone :', style: TextStyle(color: Colors.white),)],
                    ),
                    TextField(
                      controller: _telephone,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Telephone',
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
                                    Text('${_username.value.toString()}') &&
                                _telephone.value.text ==
                                    Text('${_telephone.value.hashCode}')) {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Sukes'),
                                  content: Text('Login Sukses '),
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
                        SizedBox(width: 20),
                        ElevatedButton(
                          onPressed: () {
                            if (_username.value.text ==
                                    Text('${_username.toString()}') &&
                                _telephone.value.text ==
                                    Text('${_username.toString()}')) {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Sukes'),
                                  content: Text('Selamat Datang'),
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
                                builder: (context) => EkaLogin(),
                              ),
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.tealAccent),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 250),
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
        ],
      ),
    );
  }
}
