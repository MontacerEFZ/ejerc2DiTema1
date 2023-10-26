//
//  Examen.swift
//  ejerc2DiTema1
//
//  Created by Montacer El Fazazi on 26/10/2023.
//

import Foundation

class Examen{
    //atributos
    var nombre: String
    var totalPreguntas: Int
    var totalAcertadas: Int
    var notaFinal: Float
    
    //constructor
    init(nombre: String, totalPreguntas: Int, totalAcertadas: Int) {
        self.nombre = nombre
        self.totalPreguntas = totalPreguntas
        self.totalAcertadas = totalAcertadas
        self.notaFinal = 0 //hay q inicializar primero la variable
        
        self.notaFinal = calcularNotaFinal()
    }
    
    //metodo propio (siempre con -> tipo valor que devolvera
    func calcularNotaFinal() ->Float{
        return Float(totalAcertadas) / Float(totalPreguntas) * 10 //esto es un cast:  Float(totalPreguntas)
    }
    
    func toString() ->String{
        return "Nombre: \(nombre) \nTotalPreguntas: \(totalPreguntas) \nTotalAcertadas: \(totalAcertadas) \nNota Final: \(String(notaFinal))"
    }
}
