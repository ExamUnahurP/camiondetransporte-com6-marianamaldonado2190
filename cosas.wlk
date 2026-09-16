object cosas {
    
}

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
    method peso() = 100+ cosas.forEach({ peso => peso = cosa.peso() + peso})

    method peligrosidad() = cosas.max({peligrosi})
}

object residuosRadiactivos{

}

object embalajeDeSeguridad{

}