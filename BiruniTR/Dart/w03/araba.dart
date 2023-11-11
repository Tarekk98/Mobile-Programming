class Araba {
//varsayılan/default yapıcı metot açık yazılmadığı sürece gözükmeyebilir.
  Araba() {
    print("İlk burası çalışır ve obje oluşturulup hafızaya atılır..1.");
  }

  //isimli yapıcı metotlar
  //obje oluşturma:

  String? tur;
  String? marka;
  String? model;
  int? yil;

  Araba.markaIle({required String marka}) {
    this.marka = marka;
    print(
        "Araba.markaIle(String marka) ile obje oluşturulup hafızaya atılır..2.");
    print(this.marka);
  }

  Araba.markaModelIle(String marka, String model) {
    this.marka = marka;
    this.model = model;
    print(
        " Araba.markaModelIle(String marka,String model) ile obje oluşturulup hafızaya atılır..3.");
    print(this.marka );
    print(this.model);
  }

  Araba.markaModelYilIle(
      {required marka, required String model, required int yil}) {
    this.marka = marka;
    this.model = model;
    this.yil = yil;
    print(
        " Araba.markaModelIl(String marka,String model) ile obje oluşturulup hafızaya atılır..4.");
  }

  factory Araba.FabrikaKurucusuIleOlustur(int aracKategori) {
    //....
    if (aracKategori == 0) {
      var a = Araba();
      a.tur = "Otomobil";
      return a;
    } else if (aracKategori == 1) {
      var a = Araba();
      a.tur = "SUV";
      return a;
    } else {
      var a = Araba();
      a.tur = "Ticari";
      return a;
    }
  }

  //props

  //metotlar...

  //....
}
