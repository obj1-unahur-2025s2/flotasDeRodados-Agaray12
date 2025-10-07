import rodados.*

class Dependencia {
    const cantidadEmpleados
    const flota = []

    method cantidadEmpleados() {
        return cantidadEmpleados
    }

    method agregarAFlota(rodado){
        flota.add(rodado)
    }

    method quitarDeFlota(rodado) {
        flota.remove(rodado)
    }

    method pesoTotalFlota() {
        return flota.sum({
            r => r.peso()
        })
    }

    method estaBienEquipada() {
        return flota.size() >= 3 &&
               flota.all({
                    f => f.velocidadMaxima() >= 100 
               })
    }

    method capacidadTotalEnColor(color) {
        return flota.filter({
            r => r.color() == color
        }).sum({
            i => i.capacidad()
        })
    }

    method colorDelRodadoMasRapido(){
        return flota.max({
            r => r.velocidadMaxima()
        }).color()
    }

    method capacidadFaltante() {
        return cantidadEmpleados - 
               flota.sum({
                   r => r.capacidad()
               })
    }

    method esGrande() {
        return cantidadEmpleados >= 40 &&
               flota.size() >= 5
    }
}