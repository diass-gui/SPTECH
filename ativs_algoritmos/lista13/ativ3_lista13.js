function encontrarMenor(listaNumeros = []) {
    var menor = listaNumeros[0]

    for(var posicao = 0; posicao < listaNumeros.length; posicao++) {
        if(listaNumeros[posicao] < menor) {
            menor = listaNumeros[posicao]
        }
    }
    return menor
}

console.log(encontrarMenor([1, 3, 4, 8]))
console.log(encontrarMenor([5, 3, 4, 8]))
console.log(encontrarMenor([5, 6, 4, 8]))
console.log(encontrarMenor([5, 7, 8, 2]))