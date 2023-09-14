import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:ui' show lerpDouble;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
TextEditingController txtcep= new TextEditingController();
String resultado;
_consultaCep() async{
  //peguei o cep digitado no campo de Texto
  String cep= txtcep.text;
  //Configurando a url
  String url = "URL: viacep.com.br/ws/${cep}/json/";
  http.Response response;
   response = await http.get(url);
   Map<String,dynamic> retorno =json.decode(response.body);
   String logradouro = retorno["logradouro"];
   String cidade = retorno["localidade"];
   String bairro = retorno["bairro"];
   
   

   setState((){
    resultado = "${logradouro}, ${bairro}, ${localidade}";
   })

}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consultando um Cep via API"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceAround ,
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Digite o cep, ex:13607274" ),
          )
Text("Resultado:${resultado} ", style:TextStyle(fontSize: 25) ,)
RaisedButton(
  child: Text("Consultar", style: FontStyle(fontSize:15),
  controler:txtcep,
  ),
  color:Colors.blue,
  onPressed: _consultaCep(),
  ),
        ],
      )),
    );
  }
}
