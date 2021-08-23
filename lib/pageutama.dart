import 'package:flutter/material.dart';

class PageUtama extends StatelessWidget {
  const PageUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Badut',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Stack(
        children: <Widget>[
          Container(color: Colors.blue
              // decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //   colors: [Colors.cyan, Colors.lightGreen],
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              // )),
              ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: <Widget>[
                    Opacity(
                        opacity: 0.7,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                                image: AssetImage('assets/melengkung.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        )),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4)),
                          image: DecorationImage(
                              image: AssetImage('assets/delloy.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          29,
                          20),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Mari Membadut Bersama ku',
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.green, fontSize: 25),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Menjadi Badut Sejak :',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12)),
                                  Text(
                                    '32 Agustus, 2069',
                                    style: TextStyle(
                                        color: Colors.orange, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            Row(children: <Widget>[
                              Spacer(flex: 10),
                              Icon(Icons.thumb_up,
                                  size: 20, color: Colors.grey),
                              Spacer(flex: 1),
                              Text(
                                '69',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer(flex: 5),
                              Icon(Icons.comment, size: 20, color: Colors.grey),
                              Spacer(flex: 1),
                              Text(
                                '696',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer(flex: 10),
                            ])
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
