import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_2/modules/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black, //HexColor('333739'),
          //brightness: Brightness.light,
          primaryColor: Colors.blue,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            elevation: 0,
            backgroundColor: Colors.black, //HexColor('333739'),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            actionsIconTheme: IconThemeData(
              color: Colors.white,
              size: 40,
            ),
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.black,
              statusBarIconBrightness: Brightness.light,
            ),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: Colors.blue,
              type: BottomNavigationBarType.fixed,
              backgroundColor: HexColor('333739'),
              unselectedItemColor: Colors.grey),
          textTheme: const TextTheme(
              bodyText1: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white))),
      debugShowCheckedModeBanner: false,
      home: const Screen1(),
    );
  }
}
