import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';
import 'config/configuration.dart';
import 'ui/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );
  // aquí nos conectamos a los servicios de
  // firebase
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDHBLC7Q9SfjN8Il0FSbU0LvsszG1-1eoQ",
          authDomain: "reto3-6685f.firebaseapp.com",
          projectId: "reto3-6685f",
          storageBucket: "reto3-6685f.appspot.com",
          messagingSenderId: "760896765644",
          appId: "1:760896765644:web:5d085b9ba5a4047dea0c69",
          measurementId: "G-Y50SW1ZDEC"));
  runApp(const MyApp());
}
