function ePositivo(listaNumeros = []) {
    var qtdElementosPositivos = 0
    
    for(var posicao = 0; posicao < listaNumeros.length; posicao++) {
        if(listaNumeros[posicao] >= 0) {
            qtdElementosPositivos += 1
        }
    }
    if(qtdElementosPositivos == listaNumeros.length) {
        return true
    }
    else {
        return false
    }
}

console.log(ePositivo([1, 3, 5, 7]))
console.log(ePositivo([0, 3, 5, 7]))