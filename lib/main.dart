import 'package:flutter/material.dart';
import 'constantes.dart' as Constantes;
import 'funcoes.dart' as Funcoes;

void main() => runApp(AppSushiPizzaTime());

class AppSushiPizzaTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Title(
            color: Colors.black,
            child: Text(
              Constantes.TITULO_APP,
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset(
                  Constantes.ASSET_LOGO,
                  fit: BoxFit.fill,
                ),
                height: 200,
                width: 400,
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 70,
                child: RaisedButton(
                    child: Text(
                      Constantes.BOTAO_SITE,
                      style: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 20,
                      ),
                    ),
                    color: Colors.amber,
                    onPressed: () {
                      Funcoes.abrirURL();
                    }),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 70,
                child: RaisedButton(
                    child: Text(Constantes.BOTAO_LOCALIZACAO,
                     style: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 20,
                      ),),
                    color: Colors.amber,
                    onPressed: () {
                      Funcoes.abrirLocalizacao();
                    }),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 70,
                child: RaisedButton(
                    child: Text(Constantes.BOTAO_CHAMADA,
                     style: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 20,
                      ),),
                    color: Colors.amber,
                    onPressed: () {
                      Funcoes.encomendarTelefone();
                    }),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 70,
                child: RaisedButton(
                    child: Text(Constantes.BOTAO_EMAIL,
                     style: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 20,
                      ),),
                    color: Colors.amber,
                    onPressed: () {
                      Funcoes.encomendarEmail();
                    }),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 70,
                child: RaisedButton(
                    child: Text(Constantes.BOTAO_SMS,
                     style: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 20,
                      ),),
                    color: Colors.amber,
                    onPressed: () {
                      Funcoes.encomendarSMS();
                    }),
              ),
            ],
          ),
          color: Colors.black,
        ),
      ),
    );
  }
}
