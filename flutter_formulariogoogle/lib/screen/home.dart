import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
              bottom: 150,
              right: 20,
              child: Container(
                margin: const EdgeInsets.only(top: 430, left: 300),
                color: Colors.amber[600],
                width: 350.0,
                height: 400.0,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Center(
                        child: Container(
                            width: 200,
                            height: 150,
                            decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),
                            child:
                                Image.asset('asset/images/flutter-logo.png')),
                      ),
                    ),
                    const Padding(
                      //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                      padding: EdgeInsets.only(top: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                            border: OutlineInputBorder(),
                            labelText: 'Correo',
                            hintText: 'Ingrese el corre@'),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
