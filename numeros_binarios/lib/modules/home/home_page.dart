import "package:flutter/material.dart";
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Número binários"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  maxLength: 8,
                  decoration: InputDecoration(
                      labelText: "Digite o 1º numero em binario",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0))
                      )
                  ),
                  onChanged: (value){
                    controller.setPrimeiroNumeroBinario(value);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  maxLength: 8,
                  decoration: InputDecoration(
                      hintText: "Digite o 2º numero em binario",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0))
                      )
                  ),
                  onChanged: (value){
                    controller.setSegundoNumeroBinario(value);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  child: Text("Calcular operações aritmeticas:"),
                  onPressed: (){
                    if(!controller.calcularOperacoes()){
                      showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Text("Atenção!!!"),
                            content: Text("Digite corretamente os números binários"),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("Ok"),
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                              )
                            ],
                          );
                        }
                      );
                    }
                  },
                )
              ),
              Text(controller.soma),
              Text(controller.subtracao),
              Text(controller.divisao),
              Text(controller.multiplicacao),
              Text(controller.resto),
            ],
          ),
        ),
      ),
    );
  }
}
