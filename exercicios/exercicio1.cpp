#include <iostream>

using namespace std;

int main(){
	
	int numeroDeEntradas;
	
	cin >> numeroDeEntradas;
	
	int numeros[numeroDeEntradas];
	
	for(int cont = 0; cont < numeroDeEntradas; cont++){
		cin >> numeros[cont];
	}
	
	for(int l = 0; l < numeroDeEntradas; l++){
		for(int c = 0; c < numeroDeEntradas - l - 1; c++){
			if(numeros[c] > numeros[c+1]){
				int temp = numeros[c];
				numeros[c] = numeros[c+1];
				numeros[c+1] = temp;
			}
		}
	}
	
	int ultimoNumeroNaoRepetido;
	for(int cont = 0; cont < numeroDeEntradas; cont++){
		if(cont == 0 || numeros[cont] != ultimoNumeroNaoRepetido){
			ultimoNumeroNaoRepetido = numeros[cont];
			cout << ultimoNumeroNaoRepetido << endl;
		}
	}
	
}
