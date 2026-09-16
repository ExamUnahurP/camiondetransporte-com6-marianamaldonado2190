object knightRider {
    method peso() = 500
    method peligrosidad() = 10
}

object bumblebee {
    var estado = unAuto
    method peso() = 800
    method peligrosidad() = transformar.peligrosidad()
    method transformar(nuevaTransformacion) {
        transformar = nuevaTransformacion
    }
}
object unAuto{
    method peligrosidad() = 15
}
object unRobot{
    method peligrosidad() = 30
}

object paqueteDeLadrillos{
    var cantLadrillos = 0
    method peso() = 2 * cantLadrillos
    method peligrosidad() = 2
    method transformar() = agregarLadrillos(12)
    method agregarLadrillos(nuevosLadrillos){
        cantLadrillos = nuevosLadrillos + cantLadrillos
    }
}

object arenaAGranel{
    var peso = 0
    method peligrosidad() = 1
    method transformar() = peso - 10
}

object bateriaAntiaerea{
    var estado = descargada
    
    method cambiarTransformacion(nuevaTransformacion){
        estado = nuevaTransformacion
    }

    method transformar(){
        estado.cambiarTransformacion(cargada)
    }
}
object cargada{
    method peso() = 300
    method peligrosidad() = 100
}
object descargada{
    method peso() = 200
    method peligrosidad() = 0
}

object contenedorPortuario{
    var cosas = []

    method peso() = 100 + cosas.sum({cosa => cosa.peso()})
    method peligrosidad() = cosas.max({cosa => cosa.peligrosidad()})
    method agregarCosa(nuevaCosa) = cosas.add(nuevaCosa)
    method transformar() {
    cosas.forEach(cosa => cosa.transformar)
    } 
        

}

object residuosRadiactivos{
    var pesoResiduo = 0
    method peligrosidad() = 200
    method peso() = pesoResiduo
    method transformar{
        pesoResiduo = pesoResiduo + 15
    }

}

object embalajeDeSeguridad{
    var cosaEmbalada = residuosRadiactivos
    method embalarCosa(nuevaCosa){
        cosaEmbalada = nuevaCosa 
    }
    method peso() = cosaEmbalada.peso()
    method peligrosidad() =  cosaEmbalada.peligrosidad() / 2
}