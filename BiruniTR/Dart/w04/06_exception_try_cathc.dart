void main(List<String> args) {
  int a = 0;
  int b =0;

  if (b == 0) {
    throw BenimHatam("Sıfıra bölme hatası");
  } else {}

  try {
    //...
    print(a / b);

    //...
  } on IntegerDivisionByZeroException {
    //....
  } on FormatException {
    //.....
  } on BenimHatam{
    //...
  }
  
   catch (e) {
    //.....
    print(e);
  }
}

class BenimHatam implements Exception {
  String mesaj;
  BenimHatam(this.mesaj);

  @override
  String toString() {
    return "Exception: 405, $mesaj" ;
  }
}







//
/*void main() {
  int a = 10;
  int b = 0;

  try {
    if (b == 0) {
      throw BenimHatam("Sıfıra bölme hatası");
    } else {
      print(a / b);
    }
  } on IntegerDivisionByZeroException {
    // Bu blok çalışmaz, çünkü b sıfıra eşit değil.
    print("Sıfıra bölme hatası yakalandı");
  } on FormatException {
    // Bu blok çalışmaz, çünkü sıfıra bölme hatası fırlatıldı.
    print("Format hatası yakalandı");
  } on BenimHatam {
    // Bu blok çalışır, çünkü kendi hatamızı fırlattık.
    print("Kendi hatamız yakalandı");
  } catch (e) {
    // Bu blok çalışmaz, çünkü belirli türlerdeki hatalar zaten önceki bloklarda ele alındı.
    print("Genel hata yakalandı: $e");
  }
}


class BenimHatam implements Exception {
  String message;
  BenimHatam(this.message);
}*/