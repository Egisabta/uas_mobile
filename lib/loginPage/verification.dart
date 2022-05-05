import 'package:flutter/material.dart';

class verifikasi extends StatefulWidget {
  const verifikasi({Key? key}) : super(key: key);

  @override
  State<verifikasi> createState() => _verifikasiState();
}

class _verifikasiState extends State<verifikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.white10,
          flexibleSpace: Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height * 2,
          width: MediaQuery.of(context).size.width * 2,
          decoration: BoxDecoration(),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(left: 0.2)),
              SizedBox(
                height: 10,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 0.2)),
                  Text(
                    "Masukkan 6 digit kode verifikasi yang dikirimkan ke\negisabta76@gmail.com",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Container(
                  height: 45,
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: TextFormField(
                    // decoration
                    decoration: InputDecoration(
                      // icon: Icon(Icons.email),
                      contentPadding: EdgeInsets.all(5),
                      prefixStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      filled: true,
                      fillColor: Colors.grey[50],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 0.2)),
                  Text(
                    "Jike merasa tidak menerima email coba cek spam",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 0.2)),
                  Text(
                    "Ubah Alamat Email",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ],
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
                      //     Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const verifikasi()),
                      // );
                      Navigator.pushNamed(context, "/Home");
                    }),
              ),
            ],
          ),
        ));
  }
}
