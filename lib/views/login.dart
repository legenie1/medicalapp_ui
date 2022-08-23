import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicalUI/views/home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 62, 129),
      // appBar: AppBar(
      //   title: Text("Login Page"),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(top: 100.0)),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Text(
                'Connectez - vous',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 32),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 0, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Numéro de telephone',
                    hintText: 'Entrer votre numéro de téléphone'),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15.0, bottom: 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'Mot de Passe',
                    hintText: "Entrer votre mot de passe"),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              child: Text(
                'Mot de Passe Oublié ?',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(height: 200),
            Container(
              height: 58,
              width: 325,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomeScreen()));
                },
                child: Text(
                  'Connexion',
                  style: TextStyle(
                      color: Color.fromARGB(255, 15, 62, 129), fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Vous n\'avez pas de compte ?',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
