//: Velocimetro de Automovil

import UIKit


enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120, velocidadInicial
    
    init( velocidadInicial : Velocidades ){
        self = .velocidadInicial
    }
}

class Auto {
    
    var velocidad = Velocidades(velocidadInicial: .Apagado)
    
    init(){
        velocidad = .Apagado
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena : String){
        var actual = 0
        var velocidadEnCadena = " "
        switch velocidad.rawValue{
        case 0:
            actual = velocidad.rawValue
            velocidadEnCadena = "Apagado"
            velocidad = .VelocidadBaja
        case 20:
            actual = velocidad.rawValue
            velocidadEnCadena = "Velocidad Baja"
            velocidad = .VelocidadMedia
        case 50:
            actual = velocidad.rawValue
            velocidadEnCadena = "Velocidad Media"
            self.velocidad = .VelocidadAlta
        case 120:
            actual = velocidad.rawValue
            velocidadEnCadena = "Velocidad Alta"
            self.velocidad = .VelocidadMedia
        default:
            actual = 0
            velocidadEnCadena = " "
        }
        return (actual , velocidadEnCadena )

    }
    
}

var auto = Auto()

for i in 1...20 {
let(actual,velocidadEnCadena) = auto.cambioDeVelocidad()
    print(actual,",",velocidadEnCadena)
}





