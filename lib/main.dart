import 'package:manager/screens/TestScreen.dart';

import './screens/detailBookScreen.dart';
import 'package:flutter/material.dart';
import './screens/installedScreen.dart';
import './const/colors.dart';
import './screens/favoritesScreen.dart';
import './screens/systemScreen.dart';
import './screens/settingScreen.dart';
import './screens/hiddenScreen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Metropolis",
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
          ),
        ),
        textTheme: TextTheme(
          headline3: TextStyle(
            color: AppColor.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            color: AppColor.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          headline5: TextStyle(
            color: AppColor.primary,
            fontWeight: FontWeight.normal,
            fontSize: 25,
          ),
          headline6: TextStyle(
            color: AppColor.primary,
            fontSize: 25,
          ),
          bodyText2: TextStyle(
            color: AppColor.secondary,
          ),
        ),
      ),
      home: InstalledScreen(),
      routes: {
        InstalledScreen.routeName: (context) => InstalledScreen(),
        FavoritesScreen.routeName: (context) => FavoritesScreen(),
        SystemScreen.routeName: (context) => SystemScreen(),
        SettingScreen.routeName: (context) => SettingScreen(),
        HiddenScreen.routeName: (context) => HiddenScreen(),
        DetailBookScreen.routeName: (context) => DetailBookScreen(),
      },
    );
  }
}