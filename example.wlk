object dePorte {
  var edad = 30
  const altura = 180
  var disciplina = tenis

  
}

object tenis {
  var cantCanchas = 5
  method precio() {
    return 200  + cantCanchas * 3
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

  method cantMedallas(cant) {
    cantMedallas = cant
  }
}