function somarElementos(lista1 = [], lista2 = []) {
    var vetorResultado = []

    for(var posicao = 0; posicao < lista1.length; posicao++) {
        var totalElementos = lista1[posicao] + lista2[posicao]
            vetorResultado.push(totalElementos)
    }
    return vetorResultado
}

console.log(somarElementos([1, 2, 4], [3, 5, 7]))
console.log(somarElementos([7, 2, 1], [3, 5, 7]))
