//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int {
    
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades )
    {
        self = velocidadInicial
    }
    func velocidadEnCadena() -> String {
        switch self
        {
        case .Apagado: return "Apagado"
        case .VelocidadBaja: return "Velocidad baja"
        case .VelocidadMedia: return "Velocidad media"
        case .VelocidadAlta: return "Velocidad alta"
        }
    }
}

class Auto {
    
    var velocidad : Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String)
    {
        switch self.velocidad
        {
        case .Apagado:
            self.velocidad = .VelocidadBaja
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
        case .VelocidadAlta:
            self.velocidad = .Apagado
        }
        return (self.velocidad.rawValue, self.velocidad.velocidadEnCadena())
    }
}

var auto: Auto = Auto()

for i in 1...20 {
    
    let (velocidad, velocidadEnCadenda) = auto.cambioDeVelocidad()
    if velocidad == Velocidades.Apagado.rawValue
    {
        print("El velocímetro marca: \(velocidad) por lo que el coche está \(velocidadEnCadenda)")
    }
    else {
        print("El velocímetro marca: \(velocidad) por lo que el coche va a una \(velocidadEnCadenda)")
    }
}