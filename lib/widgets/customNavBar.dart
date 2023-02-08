import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../screens/installedScreen.dart';
import '../screens/systemScreen.dart';
import '../screens/hiddenScreen.dart';
import '../screens/favoritesScreen.dart';
import '../utils/helper.dart';


class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key, required this.installed, required this.system, required this.favorites, required this.hidden}) : super(key: key);
  final bool installed;
  final bool system;
  final bool favorites;
  final bool hidden;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: Helper.getScreenWidth(context),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              width: Helper.getScreenWidth(context),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (!installed) {
                        Navigator.of(context)
                            .pushReplacementNamed(InstalledScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        installed
                            ? Icon(Icons.download_done_outlined, size: 30,)
                            : Icon(Icons.download_done_outlined, size: 30,),
                        installed
                            ? Text("Installed",
                            style: TextStyle(color: AppColor.blue))
                            : Text(""),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!system) {
                        Navigator.of(context)
                            .pushReplacementNamed(SystemScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        system
                            ? Icon(Icons.phone_android, size: 30,)
                            : Icon(Icons.phone_android, size: 30,),
                        system
                            ? Text("System",
                            style: TextStyle(color: AppColor.blue))
                            : Text(""),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!favorites) {
                        Navigator.of(context)
                            .pushReplacementNamed(FavoritesScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        favorites
                            ? Icon(Icons.favorite, size: 30,)
                            : Icon(Icons.favorite, size: 30,),
                        favorites
                            ? Text("Favorites",
                            style: TextStyle(color: AppColor.blue))
                            : Text(""),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!hidden) {
                        Navigator.of(context)
                            .pushReplacementNamed(HiddenScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        hidden
                            ? Icon(Icons.visibility_off_sharp, size: 30,)
                            : Icon(Icons.visibility_off_sharp, size: 30,),
                        hidden
                            ? Text("Hidden",
                            style: TextStyle(color: AppColor.blue))
                            : Text(""),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
