
import 'package:flutter/material.dart';
import 'package:sos_isa_projeto/pages/login.page.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadUser extends StatelessWidget {
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
        color: Color(0xD3FFFFFF),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 120,
              height: 80,
              child: Image.asset("images/logo_lado2.png"),
            ),
//- - - - - Campo NOME - - - -
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Nome",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  )
              ),
              style: TextStyle(
                  fontSize: 18
              ),
            ),

//- - - - - Campo de EMAIL - - - -
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                )
              ),
              style: TextStyle(
                  fontSize: 18
              ),
            ),

//- - - - - Campo de NASCIMENTO - - - -
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.datetime,
              inputFormatters: [maskFormatterData],
              decoration: InputDecoration(
                  labelText: "Data de Nascimento",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  )
              ),
              style: TextStyle(
                  fontSize: 18
              ),
            ),

//- - - - - Campo TELEFONE - - - -
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              inputFormatters: [maskFormatterTell],
              decoration: InputDecoration(
                  labelText: "Telefone",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  )
              ),
              style: TextStyle(
                  fontSize: 18
              ),
            ),

//- - - - - Campo de SENHA - - - -
            SizedBox(
              height: 10,
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
//- - - - - Campo CONFIRMAR SENHA - - - -
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Confirmar Senha",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  )
              ),
              style: TextStyle(
                  fontSize: 18
              ),
            ),

// - - - - Botão Cadastar - - - - -
            SizedBox(
              height: 40,
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
                        builder: (context) => LoginPage(),
                      ),
                    ),
                  },                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
  var maskFormatterTell = new MaskTextInputFormatter(mask: '(##) #####-####', filter: { "#": RegExp(r'[0-9]') });
  var maskFormatterData = new MaskTextInputFormatter(mask: '##/##/####', filter: { "#": RegExp(r'[0-9]') });

}
