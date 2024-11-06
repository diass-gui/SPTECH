function ContarPares(listaNumeros = []) {
    var qtdPares = 0

    for(var posicao = 0; posicao < listaNumeros.length; posicao += 1) {
        var numeroAtual = listaNumeros[posicao]
         if(listaNumeros[posicao] % 2 == 0) {
            qtdPares += 1
        }
    }
    return qtdPares
} 

ContarPares([1, 2, 4, 5, 7, 8, 9])

