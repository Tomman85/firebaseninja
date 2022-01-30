import 'package:firebase_app/presentation/common/models/user.dart';
import 'package:firebase_app/presentation/screens/authenticate/components/auth.dart';
import 'package:firebase_app/presentation/screens/authenticate/components/register.dart';
import 'package:firebase_app/presentation/screens/authenticate/components/sing_in.dart';
import 'package:firebase_app/presentation/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<myUser?>.value(
      value: AuthService().user,
      catchError: (_, __) {},
      initialData: null,
      child: MaterialApp(
        home: Wrapper(),
        // routes: {
        //   '/': (context) => const Wrapper(),
        //   // SingIn.routename: (context) => SingIn(),
        //   // Register.routename: (context) => Register(),
        // },
      ),
    );
  }
}
