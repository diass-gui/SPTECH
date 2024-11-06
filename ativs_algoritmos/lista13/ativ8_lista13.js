function ContarImpares(listaNumeros = []) {
    var qtdImpares = 0

    for(var posicao = 0; posicao < listaNumeros.length; posicao += 1) {
        var numeroAtual = listaNumeros[posicao]
         if(listaNumeros[posicao] % 2 != 0) {
            qtdImpares += 1
        }
    }
    return qtdImpares
} 