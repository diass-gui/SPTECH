function VerificarOrdem(listaNumeros = []) {

    var numeroInicial = listaNumeros[0]

    if(listaNumeros == isNaN) {
        return 'Lista Inválida'
    }
    
    for(var posicao = 0; posicao < listaNumeros.length; posicao++) {

        if(numeroInicial == listaNumeros[posicao + numeroInicial]) {
            return false
        }
        else {
            return true
        }
    }
}

console.log(VerificarOrdem([1, 2, 3, 4]))
console.log(VerificarOrdem([2, 4, 6, 8]))
console.log(VerificarOrdem([1, 3, 4, 5]))