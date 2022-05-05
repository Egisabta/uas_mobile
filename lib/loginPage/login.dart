import 'package:flutter/material.dart';
import 'package:uas1/loginPage/verification.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height * 2,
        width: MediaQuery.of(context).size.width * 2,
        decoration: BoxDecoration(),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(left: 0.2)),
            SizedBox(
              height: 50,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 0.2)),
                Text(
                  "Masuk",
                  style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 0.2)),
                Text(
                  "Pilih salah satu cara untuk masuk\nmenggunakan alamat email yang terdaftar",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 0.2)),
                Text(
                  "Alamat Email",
                  style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Container(
                height: 35,
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextFormField(
                  // decoration
                  decoration: InputDecoration(
                    // icon: Icon(Icons.email),
                    contentPadding: EdgeInsets.all(5),
                    label: Text("input Email"),
                    hintText: "user@mail.com",
                    prefixIcon: Icon(Icons.email),
                    prefixStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    filled: true,
                    fillColor: Colors.blue[50],
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Field is Empty";
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return "Invalid Email";
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              height: 35,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: RaisedButton(
                  color: Colors.blue,
                  hoverColor: Colors.blue[400],
                  child: Center(
                      child: Text(
                    "MASUK",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const verifikasi()),
                    );
                    // avigator.pushNamed(context, "/masuk");
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Belum memiliki Akun Peduli Lindungi? ",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Daftar",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
