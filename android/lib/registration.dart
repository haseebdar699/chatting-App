import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:haseeb/login.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/sh.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 20.0),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {},
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: 'Enter Your Email',
                  filled: true,
                  hintStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.blueGrey[100],
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                textAlign: TextAlign.center,
                onChanged: (value) {},
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: 'Enter Your Password',
                  filled: true,
                  hintStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.blueGrey[100],
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              MaterialButton(
                child: Text(
                  'Register',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15.0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.black12),
                ),
                minWidth: 100.0,
                height: 60.0,
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, LoginScreen.id);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
