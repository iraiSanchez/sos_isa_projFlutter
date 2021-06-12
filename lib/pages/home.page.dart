
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Color(0x972196F3),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("images/logo.png"),
            ),


            Text("HOME PAGE"),

// - - - - Botão LOGIN - - - - -
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFF002D82),
                    Colors.black38,
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "HOME PAGE",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ) ,
                      ),
                    ],
                  ),
                  onPressed: () => {
                  // Navigator.push(
                  // context,
                  // MaterialPageRoute(
                  // builder: (context) => ResetPasswordPage(),
                  // ),
                  // );
                },
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),
            Container(
              height: 30,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "Recuperar senha",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF002D82),
                    fontSize: 18,
                  ) ,
                  textAlign: TextAlign.right,
                ),
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => ResetPasswordPage(),
                  //     ),
                  // );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.black38,
                    ),
                  ),

                  Text("  ou  "),

                  Expanded(
                    child: Divider(
                      color: Colors.black38,
                    ),
                  ),
                ]
            ),
// - - - - Botão LOGIN - - - - -
            SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25),
              height: 45,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.5, 1],
                  colors: [
                    Color(0xFF527EC2),
                    Color(0xb2a0a0a0),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Cadastrar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ) ,
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
