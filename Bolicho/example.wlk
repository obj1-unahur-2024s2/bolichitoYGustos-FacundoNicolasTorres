object rosa {
  method leGusta(objeto) =
    objeto.peso() <= 2000
  
}

object estefania{
  method leGusta(objeto) =
    objeto.color().esColorFuerte()
  
}

object luisa {
  method leGusta(objeto) =
    objeto.material().esBrillante()
  
}

object juan{
  method leGusta(objeto) =
    not objeto.color().esColorFuerte() or 
    (objeto.peso() >= 1200 and objeto.peso() <= 1800)
  
}




object rojo{
  method esColorFuerte() = true
}

object verde{
  method esColorFuerte() = true
}

object celeste{
  method esColorFuerte() = false
}

object pardo{
  method esColorFuerte() = false
}

object naranja{
  method esColorFuerte() = true
}


object cobre{
  method esBrillante() = true
}

object vidrio{
  method esBrillante() = true
}

object lino{
  method esBrillante() = false
}

object madera{
  method esBrillante() = false
}

object cuero{
  method esBrillante() = false
}


object remera{
  method material() = lino
  method color() = rojo
  method peso() = 800
}

object pelota{
  method material() = cuero
  method color() = pardo
  method peso() = 1300
}

object biblioteca{
  method material() = madera
  method color() = verde
  method peso() = 8000
}

object muneco{
  var pesoActual = 1500
  method material() = vidrio
  method color() = celeste
  method peso(gramos) = pesoActual

  method cambiarPeso(pesoNuevo){
    pesoActual = pesoNuevo
  }
}


object placa{
  var tonoActual = pardo
  var pesoActual = 2500
  method material() = cobre
  method color() = tonoActual
  method peso() = pesoActual

  method cambiarColor(tonoNuevo){
    tonoActual = tonoNuevo
  }
  method cambiarPeso(pesoNuevo){
    pesoActual = pesoNuevo
  }
}

object arito{
  method material() = cobre
  method color() = celeste
  method peso() = 180
}

object banquito{
  var tonoActual = naranja
  method material() = madera
  method color() = tonoActual
  method peso() = 1800

  method cambiarColor(tonoNuevo){
     tonoActual = tonoNuevo
  }
}

object cajita{
  var pesoActual = 400
  method material() = cobre
  method color() = rojo
  method peso() = pesoActual

  method guardarObjeto(objeto){
    pesoActual = pesoActual + objeto.peso()
  }
}

object bolicho{
  var vidriera = remera
  var mostrador = pelota

  method brillante()
   = vidriera.esBrillante() and mostrador.esBrillante()
  

  method esMonocromatico()
   = vidriera.color() == mostrador.color()
  

  method estaEquilibrado()
   = mostrador.peso() > vidriera.peso()
  

  method objetoExhibido(unColor)
   = vidriera.color() == unColor or mostrador.color() == unColor
  

  method puedeMejorar() = self.esMonocromatico() and not self.estaEquilibrado()
  
  method cambiarVidriera(objeto){
    vidriera = objeto
  }

  method cambiarMostrador(objeto){
    mostrador = objeto
  }

  method leGustaA(cliente) = cliente.leGusta(vidriera) or cliente.leGusta(mostrador)
}