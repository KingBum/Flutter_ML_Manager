import 'package:flutter/material.dart';
import 'package:manager/screens/settingScreen.dart';

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Row(
          children: [
            Text(
              "ML Manager",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 26),
            ),
            Spacer(),
            Icon(
              Icons.search,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.sd_storage_outlined,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
