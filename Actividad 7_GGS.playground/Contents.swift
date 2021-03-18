import UIKit
/*:
# Playground - Actividad 7
* Valor por tipo y por referencia
* Funciones personalizadas Y Genericos
* Funciones de la biblioteca Swift para Arreglos
*/


/*: 
### Valor por tipo y por referencia
A) Para la colección "var costo_referencia:[Float] = [8.3,10.5,9.9]", aplicar el impuesto del 16% a través de recorrer la colección "costo_referencia" para aplicar el impuesto a cada cantidad, crear una función Impuesto que recibe como parámetro la colección y regrese aplicado el impuesto a cada cantidad.
*/
var costo_referencia:[Float] = [8.3,10.5,9.9]
var indice:Int = 0

for i in costo_referencia
{
    costo_referencia[indice] = i*0.16
    indice += 1
}


func impuesto(arreglo:[Float]) -> [Float]
{
    var resultado:[Float] = []
    for i in arreglo
    {
        resultado.append(i*0.16)
    }
    return resultado
}

impuesto(arreglo:costo_referencia)


print(costo_referencia)


//: B) Crear la función "sumaTres"  que reciba una función con dos valores a sumar y un segundo parametro para sumar el tercer número.
var numeros = [5,4,3,2]
var ndice:Int = 0

for i in numeros
{
    numeros[ndice] = i+3
    ndice += 1
}

numeros

func sumaTres(arreglo:[Int]) -> [Int]
{
    var resultado:[Int] = []
    for i in arreglo
    {
        resultado.append(i+3)
    }
    return resultado
}

sumaTres(arreglo:numeros)
numeros

print(numeros)


//: B) Función personalizada: Crear la función "Transformar" que reciba como parámetro una colección de tipo Int  "var datos = [3,7,9,2]" y una función que transforme cada valor de la coleción en una operación definida fuera de la función, regresando una colección transformada.
extension Array
{
    func Transformar<T> (inicial:T, acumula:(T,
    Element) -> T)->T
    {
        var respuesta:T = inicial
        for valor in self
        {
            respuesta = acumula(respuesta, valor)
        }
        return respuesta
    }
}

var datos = [3,7,9,2]
var letras = ["a", "e", "i", "o", "u"]
datos.Transformar(inicial:0) {(a,b) in a + b}
letras.Transformar(inicial:"") {(a,b) in a + b}


/*:
### Biblioteca de Swift
A) Aplicar la función de librería de Swift "map" para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplicar el impuesto de 16% y asignarla a la variable "impuesto"
*/
var precios = [4.2, 5.3, 8.2, 4.5]

var Impuesto = precios.map{a in a * 0.16}
Impuesto

print(Impuesto)


//: B) Aplicar la función de la librería de Swift "filter" para la colección resultante "impuesto" del paso A, en donde se obtengas solo los precios mayores a 6.0 y asignarlos a la variable "precio_menor"
var impuesto = [4.2, 5.3, 8.2, 4.5, 6.0]

var filtro = precios.filter{a in a > 6.0}

print(filtro)





