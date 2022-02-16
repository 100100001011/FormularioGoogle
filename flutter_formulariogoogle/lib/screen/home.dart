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
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
              bottom: 582,
              right: 0,
              child: Container(
                width: 395.0,
                height: 200.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://cdn.donmai.us/original/58/ca/__ikuuru_and_shaian_aic_and_1_more_drawn_by_kobayashi_makoto_illustrator__58caf5977eb819100fff43e5ab683bd6.jpg'),)),
              )),
          Positioned(
              bottom: 150,
              right: 20,
              child: Container(
                margin: const EdgeInsets.only(top: 430, left: 300),
                width: 350.0,
                height: 400.0,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15)),
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
                            labelText: 'Email',
                            hintText: 'Ingrese correo'),
                      ),
                    ),
                    const Padding(
                      //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                      padding: EdgeInsets.only(top: 10.0),
                      child: TextField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Ingrese el passsword'),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
