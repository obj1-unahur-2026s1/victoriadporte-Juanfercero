object dePorte {
  var edad = 30
  var altura = 180
  var disciplina = tenis
  var cantEntrenadores = 1
  const pagoEntrenadores = 100
  var elemento = disciplina.elemento() //De esta forma no permitimos que una persona que hace judo lleve raqueta de tenis.

  method edad(valor) {
    edad = valor 
  }
  method altura(valor) {
    altura = valor
  }
  method disciplina(nuevaDisciplina) {
    disciplina = nuevaDisciplina
    elemento = disciplina.elemento() //HAY QUE ACTUALIZARLO
  }
  method sumarCantEntrenadores(valor) {
    cantEntrenadores += valor    
  }
  method restarCantEntrenadores(valor) {
    cantEntrenadores -= valor
  }


  method presupestoPropio() {
    return cantEntrenadores * pagoEntrenadores + elemento.costo(edad, altura)
  }

  method presupuestoTotal() {
    return self.presupestoPropio() + disciplina.precio()
  }
}

object tenis {
  var cantCanchas = 5
  method precio() {
    return 200  + cantCanchas * 3
  }
  method elemento() {
    return raqueta
  }

  method cantCanchas(cant) {
    cantCanchas = cant
  }
}

object judo {
  var cantMedallas = 3
  method precio() {
    return 160 * cantMedallas
  }
  method elemento() {
    return trajeDeJudo
  }

  method cantMedallas(cant) {
    cantMedallas = cant
  }
}

object hockey {
  method precio() {
    return 1500
  }
  method elemento() {
    return paloHockey
  }
}


object raqueta {
  method costo(edad, altura) {
    return (edad * 100).min(3000)
  }
}

object trajeDeJudo {
  method costo(edad, altura) {
    return altura * 50
  }
}

object paloHockey {
  method costo() {
    return 150
  }
}