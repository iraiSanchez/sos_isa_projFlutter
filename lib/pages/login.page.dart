
import 'package:flutter/material.dart';
import 'package:sos_isa_projeto/pages/cad_user.page.dart';
import 'package:sos_isa_projeto/pages/home.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
          bottom: 20,
        ),
        color: Color(0x972196F3),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("images/logo.png"),
            ),
//- - - - - Campo de EMAIL - - - -
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )
              ),
              style: TextStyle(
                  fontSize: 20
              ),
            ),

//- - - - - Campo de SENHA - - - -
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  )
              ),
              style: TextStyle(
                  fontSize: 20
              ),
            ),

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
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ) ,
                      ),
                    ],
                  ),
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                    ),
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
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CadUser(),
                        ),
                      ),
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
