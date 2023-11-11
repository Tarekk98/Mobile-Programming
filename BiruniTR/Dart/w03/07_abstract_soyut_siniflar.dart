void main(List<String> args) {
  var sek1 = Dikdortgen();
  //sek1.alanHesapla([2, 3]);
    print(sek1.alanHesapla([2,3]));
  print(sek1.cevreHesapla([2,3]));

  var sek2 = Daire();
  //sek2.alanHesapla([4]);
  print(sek2.alanHesapla([4]));
  print(sek2.cevreHesapla([4]));
}

//soyut sınıflar objesi oluşturulamaz//soyut= غير ملموس
//sadece miras alınabilirler.

//   - `abstract` kelimesi, `Sekil` sınıfının soyut (abstract) bir sınıf olduğunu belirtir.
// Soyut sınıflar, doğrudan örneklenemezler. Yani, bu sınıftan doğrudan bir nesne oluşturamazsınız.
// Soyut sınıflar genellikle başka sınıflar için temel bir yapı veya arayüz sağlamak amacıyla kullanılır.

//`final` kelimesi, bir değişkenin değerinin sadece bir kez atanabileceğini belirtir.
//Yani, bir kez değer atandıktan sonra değiştirilemez.
//Bu durum, `PI` adlı alan için geçerlidir.
// Bu alan, sabit bir değere sahiptir ve değeri bir kez atanarak daha sonra değiştirilemez

/************************************************************************* */
abstract class Sekil {
  final double PI = 3.14;
  String? sekilAdi;

  //concrete method/gövdeli method
  void sekliniSoyle() {
    //....
    print(sekilAdi);
  }

//abstract method/soyut method
  double alanHesapla(List<double> parametreler);
  double cevreHesapla(List<double> parametreler);
}

class Dikdortgen extends Sekil {
  Dikdortgen() {
    sekilAdi = "Dikdortgen";
  }
  @override
  double alanHesapla(List<double> kenarlar) {
    return kenarlar[0] * kenarlar[1];
  }

  @override
  double cevreHesapla(List<double> kenarlar) {
    return 2 * (kenarlar[0] + kenarlar[1]);
  }
}

class Daire extends Sekil {
  Dikdortgen() {
    sekilAdi = "Daire";
  }

  @override
  double alanHesapla(List<double> parametreler) {
    return PI * parametreler[0] * parametreler[0];
  }

  @override
  double cevreHesapla(List<double> parametreler) {
    return 2 * PI * parametreler[0];
  }
}
