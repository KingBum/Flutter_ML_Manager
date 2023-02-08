import 'package:flutter/material.dart';
import 'package:manager/widgets/customTopBar.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class HiddenScreen extends StatefulWidget {
  const HiddenScreen({Key? key}) : super(key: key);
  static const routeName = "/hiddenScreen";

  @override
  State<HiddenScreen> createState() => _HiddenScreenState();
}

class _HiddenScreenState extends State<HiddenScreen> {
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
                        Icon(Icons.download_done_outlined, size: 50,),
                        SizedBox(height: 15,),
                        Text("Hide apps requiress ML Manager Pro", style: TextStyle(fontSize: 18),),
                        SizedBox(height: 15,),
                        ElevatedButton(
                          child: Text("Google Play",
                              style:
                              TextStyle(fontSize: 18, color: AppColor.primary)),
                          onPressed: () => print("it's pressed"),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                        ),
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
                hidden: true,
                favorites: false,
              )),
        ],
      ),
    );
  }
}

