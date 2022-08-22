import 'dart:math';

import 'package:deneme2/authenticationService.dart';
import 'package:deneme2/screens/CategoryScreen.dart';
import 'package:deneme2/screens/loginScreen.dart';
import 'package:deneme2/signInWithGoogle.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
  );
  runApp(HaberApp());
}

//  Language: dart commit
class HaberApp extends StatelessWidget {
  const HaberApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      Provider<AuthenticationService>(
        create: (_) => AuthenticationService(FirebaseAuth.instance),
      ),
      StreamProvider(create: (context) => context.read<AuthenticationService>().authStateChanges, initialData: null,
      ),
        Provider<GoogleSignInProvider>(create:(_) => GoogleSignInProvider()),
    ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff1E1E1E),
      ),
      home: AuthenticationWrapper(),
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      return CategoryScreen();
    }
    return loginScreen();
  }
}