function somarNumeros(listaNumeros = []) {
    var somatoria = 0

    for(var posicao = 0; posicao < listaNumeros.length; posicao++) {
        somatoria += listaNumeros[posicao]
    }
    return somatoria
}

console.log(somarNumeros([1, 2, 5, 9]))
console.log(somarNumeros([2, 2, 2, 2, 5]))
console.log(somarNumeros([1, 2, 5]))
