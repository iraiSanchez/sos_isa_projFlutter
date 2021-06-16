
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:sos_isa_projeto/pages/home.page.dart';
import 'package:brasil_fields/brasil_fields.dart';


class CadVi extends StatelessWidget {
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
//- - - - - Campo tipo de violência - - - -
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Tipo de Violência",
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



//             DropdownButton<String>(
//               // hint: Text('Tipos de violências'),
//               value: txtViolencia,
//               items: Violencia.listaViolencia.map((String violencia) {
//                 return DropdownMenuItem(
//                   value: violencia,
//                   child: Text(violencia),
//                 );
//               }
//               ).toList(),
//                onChanged: (newViolencia) {
//                  txtViolencia =  newViolencia;
//                  print('Nw: '+newViolencia+'txt:'+txtViolencia);
//                 // setState(() {
//                 //     dropdownvalue = newViolencia;
//                 // });
//                 },
//             ),


// DropdownButton<String>(
//   hint: Text('Região'),
//   onChanged: (regiaoSelecionada) {
//     print(regiaoSelecionada);
//   },
//   items: Regioes.listaRegioes.map((String regiao) {
//     return DropdownMenuItem(
//       value: regiao,
//       child: Text(regiao),
//     );
//   }).toList(),
// ),




//- - - - - Campo de endereço - - - -
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.streetAddress,
              decoration: InputDecoration(
                labelText: "Localização",
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

//- - - - - Campo de relato - - - -
            SizedBox(
              height: 50,
            ),
            TextFormField(
              keyboardType: TextInputType.datetime,
              inputFormatters: [maskFormatterData],
              decoration: InputDecoration(
                  labelText: "Relato do Ocorrido",
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

// - - - - Botão denunciar - - - - -
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
                        "Denúncie",
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
                        builder: (context) => HomePage(),
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

  var txtViolencia = 'Tipos de violências';
}

class Violencia {
  static final List<String> listaViolencia = [
    'Discriminação',
    'Violência Sexual',
    'Violência Física',
    'Violência Psicológica',
    'Tipos de violências'
  ];
}
