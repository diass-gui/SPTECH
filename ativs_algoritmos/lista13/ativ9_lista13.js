function VerificarNumero(listaNumeros = [], numero) {
    var qtdAparicao = 0

    for(var posicao = 0; posicao < listaNumeros.length; posicao += 1) {
        if(listaNumeros[posicao] == numero) {
            qtdAparicao += 1 
        }
    }
    return qtdAparicao
}

console.log(VerificarNumero([1, 1, 2, 4], 1))