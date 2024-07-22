import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza_app/app.dart';
import 'package:pizza_app/simple_bloc_observer.dart';
import 'package:user_repository/user_repository.dart';
import 'dart:io' show Platform;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey:
            "AIzaSyBehNl8yzlc170p_nBN2TzUwr0RD7I40YI", // paste your api key here
        appId:
            "1:577115640824:android:2e647595033ffa01677c0d", //paste your app id here
        messagingSenderId: "577115640824", //paste your messagingSenderId here
        projectId: "pizza-delivery-9ab2c", //paste your project id here
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp(FirebaseUserRepo()));
}
