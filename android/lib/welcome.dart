import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:haseeb/registration.dart';
import 'package:haseeb/login.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 0), vsync: this);
    animation = ColorTween(begin: Colors.white54, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/maah.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  // Hero(
                  //   tag: 'sh',
                  //   child: Container(
                  //     child: Image.asset('images/sh.jpg'),
                  //     height: 80.0,
                  //   ),
                  // ),
                  // ignore: deprecated_member_use
                  TypewriterAnimatedTextKit(
                    text: ['Welcome To Kashmir', ' The Paradise On Earth'],
                    textStyle: TextStyle(
                      fontSize: 33.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              MaterialButton(
                child: Text(
                  'Log In',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15.0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.black12),
                ),
                minWidth: 100.0,
                height: 60.0,
                color: Colors.blue[300],
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, LoginScreen.id);
                  });
                },
              ),
              SizedBox(
                height: 20.0,
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
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, RegistrationScreen.id);
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
