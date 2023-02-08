import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);
  static const routeName = "/settingScreen";

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
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
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  )
                ],
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: Helper.getScreenWidth(context),
                height: Helper.getScreenHeight(context) * 2.1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 75.0),
                      child: Text(
                        "TYT Writer",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    CategoryCard(
                      icon: Icon(
                        Icons.delete,
                        size: 30,
                      ),
                      name: "Tao truyen moi",
                      desc:
                          "Remove all the extracted APKs stored in the extraction folder",
                    ),
                    CategoryCard(
                      icon: Icon(
                        Icons.folder,
                        size: 30,
                      ),
                      name: "Tao truyen moi",
                      desc:
                          "Remove all the extracted APKs stored in the extraction folder",
                    ),
                    CategoryCard(
                      icon: Icon(
                        Icons.drive_file_rename_outline,
                        size: 30,
                      ),
                      name: "Tao truyen moi",
                      desc:
                          "Remove all the extracted APKs stored in the extraction folder",
                    ),
                    CategoryCard(
                      icon: Icon(
                        Icons.menu,
                        size: 30,
                      ),
                      name: "Tao truyen moi",
                      desc:
                          "Remove all the extracted APKs stored in the extraction folder",
                    ),
                    Container(
                      width: Helper.getScreenWidth(context),
                      height: 1,
                      color: Colors.black26,
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 75.0),
                      child: Text(
                        "PRO features",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    CategoryCard(
                      icon: Icon(
                        Icons.file_download_outlined, size: 30,
                      ),
                      name: "Buy Pro",
                      desc:
                      "Unlock exclusive new features and support the development of ML Manager",
                    ),
                    CategoryCard(
                      icon: Icon(
                        Icons.checklist_outlined,
                        size: 30,
                      ),
                      name: "Always extract in backgournd",
                      desc:
                      "APKs will be extracted in background and a notification will be displayed instead of a dialog",
                    ),
                    CategoryCard(
                      icon: Icon(
                        Icons.menu,
                        size: 30,
                      ),
                      name: "App list layout",
                      desc:
                      "Default",
                    ),
                    CategoryCard(
                      icon: Icon(
                        Icons.palette_outlined,
                        size: 30,
                      ),
                      name: "Primary color",
                      desc:
                      "Set the main color to customize the elements of the interface",
                    ),
                    CategoryCard(
                      icon: Icon(
                        Icons.dark_mode,
                        size: 30,
                      ),
                      name: "Night mode",
                      desc:
                      "Switch between default and night theme",
                    ),
                    Container(
                      width: Helper.getScreenWidth(context),
                      height: 1,
                      color: Colors.black26,
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 75.0),
                      child: Text(
                        "Customizations",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    CategoryCard(
                      icon: Icon(
                        Icons.abc_outlined,
                        size: 30,
                      ),
                      name: "Main screen layout",
                      desc:
                      "APKs will be extracted in background and a notification will be displayed instead of a dialog",
                    ),
                    CategoryCard(
                      icon: Icon(
                        Icons.border_bottom_outlined,
                        size: 30,
                      ),
                      name: "Show navigation bar",
                      desc:
                      "APKs will be extracted in background and a notification will be displayed instead of a dialog",
                    ),
                    CategoryCard(
                      icon: Icon(
                        Icons.restore_outlined,
                        size: 30,
                      ),
                      name: "Restore customizations",
                      desc:
                      "APKs will be extracted in background and a notification will be displayed instead of a dialog",
                    ),
                    Container(
                      width: Helper.getScreenWidth(context),
                      height: 1,
                      color: Colors.black26,
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 75.0),
                      child: Text(
                        "About",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    CategoryCard(
                      icon: Icon(
                        Icons.bookmark,
                        size: 30,
                      ),
                      name: "Restore customizations",
                    ),
                    CategoryCard(
                      icon: Icon(
                        Icons.security_outlined,
                        size: 30,
                      ),
                      name: "Restore customizations",
                    ),
                    CategoryCard(
                      icon: Icon(
                        Icons.error,
                        size: 30,
                      ),
                      name: "ML Manager",
                      desc:
                      "Made with <3 from Spain",
                    ),

                  ],
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  CategoryCard({
    Key? key,
    required Widget icon,
    required String name,
    String? desc,
  })  : _icon = icon,
        _name = name,
        _desc = desc,
        super(key: key);

  final String _name;
  final Widget _icon;
  final String? _desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Container(
          width: MediaQuery.of(context).size.height,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: _icon,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    _desc != null ? Container(
                      width: 280,
                      child: Text(
                        _desc!,
                        style: TextStyle(fontSize: 16),
                      ),
                    ) : SizedBox()
                  ],
                ),
              )
            ],
          )),
    );
  }
}
