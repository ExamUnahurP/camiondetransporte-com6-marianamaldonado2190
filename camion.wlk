object camion {
    const cosas = []
    method peso() = 1000 + cosas.sum({cosa => cosa.peso()})
    method cargar(unaCosa){
        cosas.add(unaCosa)
    }
    method descargar(unaCosa){
        cosas.remove(unaCosa)
    }

    method pesoPar() 
}