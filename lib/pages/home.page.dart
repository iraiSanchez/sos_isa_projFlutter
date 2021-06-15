
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 30,
          left: 40,
          right: 40,
          bottom: 20,
        ),
        color: Color(0xD7FFFFFF),
        child: ListView(
          children: <Widget>[
            // SizedBox(
            //   width: 128,
            //   height: 128,
            //   child: Image.asset("images/logo.png"),
            // ),

// - - - - Botão Denuncia - - - - -
            SizedBox(
              height: 40,
            ),
            Container(
              height: 80,
              alignment: Alignment.center,
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
                        "Denuncie",
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

// - - - - Botão Estatisticas - - - - -
            SizedBox(
              height: 40,
            ),
            Container(
              height: 80,
              alignment: Alignment.center,
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
                        "Estatísticas",
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

// - - - - Botão Telefones Uteis - - - - -
            SizedBox(
              height: 40,
            ),
            Container(
              height: 80,
              alignment: Alignment.center,
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
                        "Telefones Úteis",
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


          ],
        ),
      ),
    );
  }
}
