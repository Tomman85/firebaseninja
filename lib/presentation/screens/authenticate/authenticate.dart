import 'dart:math';

import 'package:firebase_app/presentation/screens/authenticate/components/register.dart';
import 'package:firebase_app/presentation/screens/authenticate/components/sing_in.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toogleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SingIn(toggleView: toogleView);
    } else {
      return Register(
        toggleView: toogleView,
      );
    }
  }
}
