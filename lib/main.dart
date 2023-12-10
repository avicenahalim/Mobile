import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:technews/firebase_options.dart';
import 'package:technews/screen/login.dart';
import 'package:technews/screen/onboard.dart';
import 'package:technews/screen/profile_screen.dart';

import 'screen/screen.dart';
late FirebaseApp app;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tech News',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        onboard.routeName: (context) => const onboard(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        DiscoverScreen.routeName: (context) => const DiscoverScreen(),
        ArticleScreen.routeName: (context) => const ArticleScreen(),
        ProfileScreen.routeName:(context) => const ProfileScreen(),
      },
    );
  }
}



