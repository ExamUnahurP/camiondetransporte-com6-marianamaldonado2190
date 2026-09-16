object knightRider {
    method peso() = 500
    method peligrosidad() = 10
}

object bumblebee {
    var transformar= unAuto
    method peso() = 800
    method peligrosidad() = transformar.peligrosidad()
    method cambiarTransformacion(nuevaTransformacion) {
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
}

object arenaAGranel{
    var peso = 0
    method peligrosidad() = 1
}

object bateriaAntiaerea{
    var estado = descargada
    
    method cambiarTransformacion(nuevaTransformacion){
        estado = nuevaTransformacion
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

}

object residuosRadiactivos{
    var peso = 0
    method peligrosidad() = 200
}

object embalajeDeSeguridad{
    var cosaEmbalada = residuosRadiactivos
    method embalarCosa(nuevaCosa){
        cosaEmbalada = nuevaCosa 
    }
    method peso() = cosaEmbalada.peso()
    method peligrosidad() =  cosaEmbalada.peligrosidad() / 2
}