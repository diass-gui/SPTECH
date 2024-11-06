function encontrarMaior(listaNumeros = []) {
    var maior = listaNumeros[0]

    for(var posicao = 0; posicao < listaNumeros.length; posicao++) {
        if(listaNumeros[posicao] > maior) {
            maior = listaNumeros[posicao]
        }
    }
    return maior
}

console.log(encontrarMaior([1, 3, 2]))
console.log(encontrarMaior([5, 3, 2]))
console.log(encontrarMaior([1, 3, 7]))