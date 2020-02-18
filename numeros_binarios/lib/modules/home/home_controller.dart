import "dart:math";
import 'package:mobx/mobx.dart';
import "package:flutter/material.dart";

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

    @observable
    String primeiro_numero_binario = "";

    @observable
    String segundo_numero_binario = "";

    @observable
    String soma = "";

    @observable
    String subtracao = "";

    @observable
    String divisao = "";

    @observable
    String multiplicacao = "";

    @observable
    String resto = "";

    String resultadoOperacao = "";

    @action
    setPrimeiroNumeroBinario(String value){
      primeiro_numero_binario = value;
    }

    @action
    setSegundoNumeroBinario(String value){
      segundo_numero_binario = value;
    }

    @action
    dynamic calcularOperacoes(){

      if(!verificarNumerosBinarios()){
        soma = "";
        subtracao = "";
        divisao = "";
        multiplicacao = "";
        resto = "";
        return false;
      }

      soma = "Soma = " + inteiroParaBinario( binarioParaInteiro(primeiro_numero_binario) + binarioParaInteiro(segundo_numero_binario));
      subtracao = "Subtração = " + inteiroParaBinario( binarioParaInteiro(primeiro_numero_binario) - binarioParaInteiro(segundo_numero_binario));
      divisao = "Divisão = " + inteiroParaBinario( (binarioParaInteiro(primeiro_numero_binario) / binarioParaInteiro(segundo_numero_binario)).toInt());
      multiplicacao = "Multiplicação = " + inteiroParaBinario( binarioParaInteiro(primeiro_numero_binario) * binarioParaInteiro(segundo_numero_binario));
      resto = "Resto = " + inteiroParaBinario( binarioParaInteiro(primeiro_numero_binario) % binarioParaInteiro(segundo_numero_binario));

      return true;

    }

    bool verificarNumerosBinarios(){

      for(int cont = 0; cont < primeiro_numero_binario.length; cont++){
        if(primeiro_numero_binario[cont] != "0" && primeiro_numero_binario[cont] != "1") return false;
      }

      for(int cont = 0; cont < segundo_numero_binario.length; cont++){
        if(segundo_numero_binario[cont] != "0" && segundo_numero_binario[cont] != "1") return false;
      }

      return true;
    }


    int binarioParaInteiro(String binario){

      int tamanhoBinario = 8;
      int decimal = 0;

      for(int cont = 0; cont < 8; cont++){
        tamanhoBinario--;
        if(binario[tamanhoBinario]=='1'){
          decimal+=pow(2, cont);
        }
      }
      return decimal;
    }

    String inteiroParaBinario(int n){
      resultadoOperacao = "";
      double divisao;
      for(int i = 7; i >=0 ; i--){

        if(n >= 1){
          resultadoOperacao += (n%2).toString();
          divisao = n/2;
          n = divisao.toInt();
        }
        else{
          resultadoOperacao += "0";
        }
      }

      return resultadoOperacao.split('').reversed.join('');
    }

}