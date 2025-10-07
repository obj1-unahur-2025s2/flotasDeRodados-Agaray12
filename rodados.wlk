class Corsa {
    const color

    method capacidad() = 4
    method peso() = 1300
    method velocidadMaxima() = 150
    method color() = color
}

class Kwid {
    const tieneTanqueAdicional

    method capacidad() {
        if(tieneTanqueAdicional){
            return 3
        }else {
            return 4
        }
    }

    method velocidadMaxima() {
        if(tieneTanqueAdicional){
            return 120
        }else {
            return 110
        }
    }

    method peso() {
        if(tieneTanqueAdicional){
            return 1200 + 150
        }else {
            return 1200
        }
    }

    method color() = "azul"
}

class AutoEspecial {
    const property capacidad
    const property velocidadMaxima
    const property peso
    const property color
}

object trafic {
    var interior = interiorComodo
    var motor = motorPulenta

    method capacidad() {
        return interior.capacidad()
    }

    method velocidadMaxima() {
        return motor.velocidadMaxima()
    }

    method peso() {
        return 4000 + interior.peso() + motor.peso()
    }

    method cambiarInterior(unInterior) {
        interior = unInterior
    }

    method cambiarMotor(unMotor) {
        motor = unMotor
    }

    method color() = blanco
}

object interiorComodo {
    method capacidad() = 5
    method peso() = 700
}

object interiorPopular {
    method capacidad() = 12
    method peso() = 1000
}

object motorPulenta {
    method peso() = 800
    method velocidadMaxima() = 130
}

object motorBataton {
    method peso() = 500
    method velocidadMaxima() = 80
}

