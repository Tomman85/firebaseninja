import 'package:firebase_app/presentation/common/models/user.dart';
import 'package:firebase_app/presentation/screens/authenticate/authenticate.dart';
import 'package:firebase_app/presentation/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<myUser?>(context);
    if (user == null) {
      return const Authenticate();
    } else {
      return Home();
    }
  }
}
