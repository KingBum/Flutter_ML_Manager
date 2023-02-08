import 'package:manager/widgets/customTopBar.dart';
import 'package:popover/popover.dart';
import './detailBookScreen.dart';
import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class InstalledScreen extends StatefulWidget {
  const InstalledScreen({Key? key}) : super(key: key);
  static const routeName = "/installedScreen";

  @override
  State<InstalledScreen> createState() => _InstalledScreenState();
}

class _InstalledScreenState extends State<InstalledScreen> {
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
              body: Container(
                width: Helper.getScreenWidth(context),
                height: Helper.getScreenHeight(context),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const DetailBookScreen()),
                          );
                        },
                        child: CategoryCard(
                          image: Image.asset(
                            Helper.getAssetName("1111.png", "real"),
                            fit: BoxFit.cover,
                          ),
                          name: "1.1.1.1",
                          link: "com.cloud.daynemaoi",
                        ),
                      ),
                      CategoryCard(
                        image: Image.asset(
                          Helper.getAssetName("1111.png", "real"),
                          fit: BoxFit.cover,
                        ),
                        name: "1.1.1.1",
                        link: "com.cloud.daynemaoi",
                      ),
                      CategoryCard(
                        image: Image.asset(
                          Helper.getAssetName("1111.png", "real"),
                          fit: BoxFit.cover,
                        ),
                        name: "1.1.1.1",
                        link: "com.cloud.daynemaoi",
                      ),
                      CategoryCard(
                        image: Image.asset(
                          Helper.getAssetName("1111.png", "real"),
                          fit: BoxFit.cover,
                        ),
                        name: "1.1.1.1",
                        link: "com.cloud.daynemaoi",
                      ),
                      CategoryCard(
                        image: Image.asset(
                          Helper.getAssetName("1111.png", "real"),
                          fit: BoxFit.cover,
                        ),
                        name: "1.1.1.1",
                        link: "com.cloud.daynemaoi",
                      ),
                      CategoryCard(
                        image: Image.asset(
                          Helper.getAssetName("1111.png", "real"),
                          fit: BoxFit.cover,
                        ),
                        name: "1.1.1.1",
                        link: "com.cloud.daynemaoi",
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
              bottom: 0,
              left: 0,
              child: CustomNavBar(
                installed: true,
                system: false,
                hidden: false,
                favorites: false,
              )),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required Image image,
    required String name,
    required String link,
  })  : _image = image,
        _name = name,
        _link = link,
        super(key: key);

  final String _name;
  final Image _image;
  final String _link;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15), // Image border
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(48), // Image radius
                          child: _image,
                        ),
                      )),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 240,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _name,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 24, fontWeight: FontWeight.bold, color: AppColor.primary),
                        ),
                        Text(_link,style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                        )),
                      ],
                    ),
                  ),
                  Spacer(),
                  Button()
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  ElevatedButton.icon(
                    icon: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.file_download_outlined,
                        size: 30,
                        color: AppColor.primary,
                      ),
                    ),
                    label: Text("Extract",
                        style:
                            TextStyle(fontSize: 16, color: AppColor.primary)),
                    onPressed: () => print("it's pressed"),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Share APK",
                    style: TextStyle(fontSize: 16, color: AppColor.bluebold),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.height,
                color: Colors.black26,
              )
            ],
          ),
        ));
  }
}



class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      child: GestureDetector(
        child: const Center(child: Icon(Icons.more_vert_outlined, size: 30,)),
        onTap: () {
          showPopover(
            context: context,
            bodyBuilder: (context) => const ListItems(),
            onPop: () => print('Popover was popped!'),
            direction: PopoverDirection.bottom,
            backgroundColor: Colors.white,
            width: 150,
            height: 180,
            arrowHeight: 15,
            arrowWidth: 30,
          );
        },
      ),
    );
  }
}

class ListItems extends StatelessWidget {
  const ListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context)
                  ..pop()
                  ..push(
                    MaterialPageRoute<SecondRoute>(
                      builder: (context) => SecondRoute(),
                    ),
                  );
              },
              child: Container(
                height: 40,
                child: const Center(child: Text('Open', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),)),
              ),
            ),
            const Divider(),
            Container(
              height: 40,
              child: const Center(child: Text('Uninstall', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),)),
            ),
            const Divider(),
            Container(
              height: 40,
              child: const Center(child: Text('Upload', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),)),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Back'),
        ),
      ),
    );
  }
}
