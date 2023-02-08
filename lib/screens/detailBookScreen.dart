import './installedScreen.dart';
import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';

class DetailBookScreen extends StatefulWidget {
  const DetailBookScreen({Key? key}) : super(key: key);
  static const routeName = "/detailBookScreen";

  @override
  State<DetailBookScreen> createState() => _DetailBookScreenState();
}

class _DetailBookScreenState extends State<DetailBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Spacer(),
                      Icon(Icons.send),
                      SizedBox(width: 30,),
                      Icon(Icons.shop),
                    ],
                  ),

                ],
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue),
        ),
      body: Column(
        children: [
          Container(
            width: Helper.getScreenWidth(context),
            height: 200,
            color: AppColor.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  child: Image.asset(
                    Helper.getAssetName("1111.png", "real"),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10,),
                Text("1.1.1.1", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text("6.22/2970", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.open_in_new, size: 30,),
                  Text("Open", style: TextStyle(fontSize: 16),)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.download_outlined, size: 30,),
                  Text("Open", style: TextStyle(fontSize: 16),)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.delete, size: 30,),
                  Text("Open", style: TextStyle(fontSize: 16),)
                ],
              )
            ],
          ),SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.favorite_outline, size: 30,),
                  Text("Favorites", style: TextStyle(fontSize: 16),)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.cloud_upload, size: 30,),
                  Text("Upload", style: TextStyle(fontSize: 16),)
                ],
              )
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 5,
            color: Colors.black26,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(Icons.link, size: 30,),
                SizedBox(width: 30,),
                Container(
                  width: 150,
                    child: Text("com.cloudflare.onled.kingbum",
                      style: TextStyle(overflow: TextOverflow.ellipsis,
                          fontSize: 16, color: AppColor.primary),)),
                SizedBox(width: 30,),
                Icon(Icons.shop),
                Text("Google Play", style: TextStyle(color: AppColor.blue, fontSize: 16),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Icon(Icons.sd_storage, size: 30,),
                SizedBox(width: 30,),
                Text("Size : 5.25 MB", style: TextStyle(fontSize: 16, color: AppColor.primary),)
              ],
            ),
          )
        ],
      ),
      );
  }
}
