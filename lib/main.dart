import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:users_app/appInfo/app_info.dart';
import 'package:users_app/authentication/login_screen.dart';
import 'package:users_app/authentication/signup_screen.dart';
import 'package:users_app/pages/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyByupk_LXb0kN_Z1vTEi4be1ug8xb53zac",
      appId: "1:1066026920128:android:05a185594230efceae2525",
      messagingSenderId: "1066026920128",
      projectId: "taxi-dispatch-21caf",
      storageBucket: "taxi-dispatch-21caf.appspot.com"
    ),
  );

  await Permission.locationWhenInUse.isDenied.then((valueOfPermission) {
    if(valueOfPermission) {
      Permission.locationWhenInUse.request();
    }
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppInfo(),
      child: MaterialApp(
        title: '21880284 User App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
        ),
        home: FirebaseAuth.instance.currentUser == null? LoginScreen() : HomePage(),
      ),
    );
  }
}
