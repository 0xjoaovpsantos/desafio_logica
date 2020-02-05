#include <iostream>
#include <cmath>
using namespace std;

int binarioParaInteiro(char binario[]){
	
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

int main(){
	
	int somaDecimal;
	int somaBinario[8];
	char operacaoAritmetica;
	char numero1[8];
	char numero2[8];
	
	cin >> operacaoAritmetica;
	cin >> numero1;
	cin >> numero2;
	
	
	switch(operacaoAritmetica){
		case '+':
			somaDecimal = binarioParaInteiro(numero1) + binarioParaInteiro(numero2);
			break;
		case '-':
			somaDecimal = binarioParaInteiro(numero1) - binarioParaInteiro(numero2);
			break;
		case '*':
			somaDecimal = binarioParaInteiro(numero1) * binarioParaInteiro(numero2);
			break;
		case '/':
			somaDecimal = binarioParaInteiro(numero1) / binarioParaInteiro(numero2);
			break;
		case '%':
			somaDecimal = binarioParaInteiro(numero1) % binarioParaInteiro(numero2);
			break;
	}

    for(int i = 7; i >=0 ; i--){

        if(somaDecimal >= 1){
            somaBinario[i] = (somaDecimal%2);
            somaDecimal /= 2;
        }
        else{
            somaBinario[i] = 0;
        }
    }
     
    for(int cont = 0; cont < 8; cont++){
    	cout << somaBinario[cont];
	}
	
	cout << endl;
    
}
