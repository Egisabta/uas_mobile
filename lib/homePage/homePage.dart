import 'package:flutter/material.dart';
import 'package:uas1/qrScanner/scanner.dart';

class myHomePage extends StatefulWidget {
  const myHomePage({Key? key}) : super(key: key);

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  late List menus = [
    MenuItem(icon: "", menuName: "Check In"),
    MenuItem(icon: "", menuName: "Check Out"),
    MenuItem(icon: "", menuName: "Setting"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("Hai, EgiSabta", style: TextStyle(color: Colors.black)),
        leading: const Icon(Icons.person_pin, color: Colors.black, size: 30),
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none, color: Colors.black))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Masuk ke ruang publik?",
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Container(
                      padding: EdgeInsets.only(top: 13, bottom: 13, left: 16, right: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(36)),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => scanner()));
                              },
                              icon: Icon(Icons.web_outlined, color: Colors.lightBlueAccent)),

                          // const Icon(Icons.web_outlined,
                          //     color: Colors.lightBlueAccent),
                          const SizedBox(width: 8),
                          const Text(
                            "Scan QR Code",
                            style: TextStyle(color: Colors.lightBlueAccent),
                          ),
                        ],
                        mainAxisSize: MainAxisSize.min,
                      ))
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(
                    3,
                    (i) {
                      MenuItem menu = menus[i];
                      MenuItem icon = menus[i];

                      return Container(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.all(Radius.circular(20))),
                              height: 60,
                              width: 60,
                            ),
                            // IconButton(onPressed: () {}, icon: Icon(menu.icon)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(menu.menuName, style: TextStyle(color: Colors.black, fontSize: 14), textAlign: TextAlign.center)
                          ],
                          // mainAxisSize: MainAxisSize.min,
                        ),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      //  floatingActionButton: FloatingActionButton(onPressed: _incrementCounter, tooltip: 'Increment', child: const Icon(Icons.help_outline, color: Colors.blue)),
    );
  }
}

class MenuItem {
  late String icon;
  late String menuName;
  //late String menuDescription;
  MenuItem({required this.icon, required this.menuName});
}
