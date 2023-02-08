import 'package:flutter/material.dart';
import 'package:manager/widgets/customTopBar.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);
  static const routeName = "/favoritesScreen";

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(70.0),
                child: AppBar(
                    title: CustomTopBar(),
                    centerTitle: true,
                    backgroundColor: Colors.blue),
              ),
              body: SingleChildScrollView(
                child: Container(
                  width: Helper.getScreenWidth(context),
                  height: Helper.getScreenHeight(context)/1.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.search, size: 50,),
                      Text("No apps have been found", style: TextStyle(fontSize: 18),)
                    ],
                  ),
                )
              )),
          Positioned(
              bottom: 0,
              left: 0,
              child: CustomNavBar(
                installed: false,
                system: false,
                hidden: false,
                favorites: true,
              )),
        ],
      ),
    );
  }
}

