object dePorte {
  var edad = 30
  const altura = 180
  var disciplina = tenis
  var cantEntrenadores = 1
  const pagoEntrenadores = 100
  var elemento = disciplina.elemento()

  method edad(valor) {
    edad = valor 
  }
  method disciplina(nuevaDisciplina) {
    disciplina = nuevaDisciplina
  }
  method sumarEntrenador() {
    cantEntrenadores += 1    
  }


  method presupesto() {
    cantEntrenadores * pagoEntrenadores + elemento.costo(edad, altura)
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