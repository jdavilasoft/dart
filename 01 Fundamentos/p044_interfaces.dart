abstract class ReproductorMultimedia {
  void reproducir();
  void pausar();
  void detener();
  void setVolumen(int volumen);
}

class ReproductorMusica implements ReproductorMultimedia {
  @override
  void reproducir() {
    print("Reproduciendo música...");
  }

  @override
  void pausar() {
    print("Música pausada.");
  }

  @override
  void detener() {
    print("Reproducción de música detenida.");
  }

  @override
  void setVolumen(int volumen) {
    print("Volumen de la música establecido en $volumen.");
  }
}

class ReproductorVideo implements ReproductorMultimedia {
  @override
  void reproducir() {
    print("Reproduciendo video...");
  }

  @override
  void pausar() {
    print("Video pausado.");
  }

  @override
  void detener() {
    print("Reproducción de video detenida.");
  }

  @override
  void setVolumen(int volumen) {
    print("Volumen del video establecido en $volumen.");
  }
}

void main() {
  ReproductorMultimedia reproductorMusica = ReproductorMusica();
  reproductorMusica.reproducir();
  reproductorMusica.pausar();
  reproductorMusica.detener();
  reproductorMusica.setVolumen(50);

  ReproductorMultimedia reproductorVideo = ReproductorVideo();
  reproductorVideo.reproducir();
  reproductorVideo.pausar();
  reproductorVideo.detener();
  reproductorVideo.setVolumen(75);
}
